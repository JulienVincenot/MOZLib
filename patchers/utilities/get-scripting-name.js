function loadbang() {
    var unique_id = Math.floor(Math.random() * 10000);
    var patcher_id = this.patcher.name || "default";
    var name = patcher_id + "_lisp" + unique_id;

    this.box.varname = name;
    post("Assigned scripting name: " + name + "\n");
    outlet(0, name);
}