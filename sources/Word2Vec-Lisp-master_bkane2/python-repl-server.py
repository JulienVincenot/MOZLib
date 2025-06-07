#!/usr/bin/env python
"""
Provides a Python REPL-like interface (minus stdout strings) over a socket.
A client can send in discrete python expressions to be evaluated either via
'exec' or 'eval' within a persistent environment. If 'eval' is run, the
output is returned.

This server only responds to POST requests and OPTIONS to allow
cross-origin requests.

To start:
python python-repl-server.py 8080 "g:g"
"""
from BaseHTTPServer import BaseHTTPRequestHandler, HTTPServer
import SocketServer
from os import curdir, sep
import json
import sys
import subprocess
from time import gmtime, strftime
import base64
import code

key = ""
# TODO: make it so we can have multiple connections with unique local variables.
local = {"__name__": "__console__", "__doc__": None}

"""
Server class.
Allows HEAD, OPTIONS, and POSTS.  The server authenticates the user to limit
unwanted traffic and allows cross-origin requests of all sorts since this
server is designed to be called by another backend.
"""
# TODO: set cross-origin to only be allowed from cs.rochester
class S(BaseHTTPRequestHandler):

  # Set options that allow cross-origin requests.
  # NOTE: these may not all be necessary, I just got it to work and stopped...
  def _set_headers(self):
    self.send_response(200)
    self.send_header("Access-Control-Allow-Origin", "*")
    self.send_header("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With")
    self.send_header('Access-Control-Allow-Methods', 'POST, OPTIONS')
    self.send_header("Access-Control-Allow-Credentials", "true");
    self.send_header("Access-Control-Max-Age", "360000");

  def do_AUTHHEAD(self):
    print "send header"
    self.send_response(401)
    self.send_header('WWW-Authenticate', 'Basic realm=\"Test\"')
    self.send_header('Content-type', 'text/html')
    self.end_headers()

  def do_HEAD(self):
    self._set_headers()

	# Set options that allow cross-origin requests.
  # NOTE: these may not all be necessary, I just got it to work and stopped...
  def do_OPTIONS(self):
    self.send_header("Access-Control-Allow-Credentials", "true");
    self.send_header('Access-Control-Allow-Origin', '*')
    self.send_header('Access-Control-Allow-Methods', 'POST, OPTIONS')
    self.send_header("Access-Control-Allow-Headers", "Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With")
    self.send_header("Access-Control-Max-Age", "360000");
    self.end_headers()

  def do_POST(self):
    global key
    ''' Present frontpage with user authentication. '''
    if self.headers.getheader('Authorization') == None:
      # No auth header.
      print "No auth header"
      self.do_AUTHHEAD()
      self.wfile.write('no auth header received')
      pass
    elif self.headers.getheader('Authorization') == 'Basic '+key:
      # Authorized, process request.
      print "Authorized!"
      content_length = int(self.headers['Content-Length']) # <--- Gets the size of data
      post_data = self.rfile.read(content_length) # <--- Gets the data itself

      print "post_data"
      print post_data

      npost_data = json.loads(post_data)
      print npost_data

      cmd = npost_data['cmd']
      exp = npost_data['exp']
      print "Command: {}".format(cmd)
      print "Expression: {}".format(exp)
      result = None
      # TODO: limit the scope of exec and eval so we can't fuck up our file system.
      if cmd == 'exec':
        exec(exp, local)
      else:
        result = eval(exp, local)
      print "Result {}".format(result)
      self._set_headers()
      self.send_header('Content-type',"application/json")
      self.end_headers()
      self.wfile.write(json.dumps({"result":result}))
      pass
    else:
      print "Failed authentication"
      # Failed authentication.
      self.do_AUTHHEAD()
      self.wfile.write(self.headers.getheader('Authorization'))
      self.wfile.write('not authenticated')
      pass

# Create server object and on given port and start serving.
def run(server_class=HTTPServer, handler_class=S, port=80):
  server_address = ('', port)
  httpd = server_class(server_address, handler_class)
  print 'Starting httpd...'
  httpd.serve_forever()

if __name__ == "__main__":
  from sys import argv

  if len(argv) == 3:
    # Store auth key and run.
    key = base64.b64encode(argv[2])
    run(port=int(argv[1]))
  else:
    print "usage: python automatic-annotation-server.py [port] [username:password]"
    sys.exit()

