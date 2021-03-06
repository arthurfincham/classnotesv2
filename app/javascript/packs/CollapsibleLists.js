//code.iamkate.com
var CollapsibleLists = function () {
  function e(b, c) {
    [].forEach.call(b.getElementsByTagName("li"), function (a) {
      c && b !== a.parentNode || (a.style.userSelect = "none", a.style.MozUserSelect = "none", a.style.msUserSelect = "none", a.style.WebkitUserSelect = "none", a.addEventListener("click", g.bind(null, a)), f(a))
    })
  }

  function g(b, c) {
    for (var a = c.target;
      "LI" !== a.nodeName;) a = a.parentNode;
    a === b && f(b)
  }

  function f(b) {
    var c = b.classList.contains("collapsibleListClosed"),
      a = b.getElementsByTagName("ul");
    [].forEach.call(a, function (a) {
      for (var d = a;
        "LI" !== d.nodeName;) d = d.parentNode;
      d === b && (a.style.display = c ? "block" : "none")
    });
    b.classList.remove("collapsibleListOpen");
    b.classList.remove("collapsibleListClosed");
    0 < a.length && b.classList.add("collapsibleList" + (c ? "Open" : "Closed"))
  }
  return {
    apply: function (b) {
      [].forEach.call(document.getElementsByTagName("ul"), function (c) {
        c.classList.contains("collapsibleList") && (e(c, !0), b || [].forEach.call(c.getElementsByTagName("ul"), function (a) {
          a.classList.add("collapsibleList")
        }))
      })
    },
    applyTo: e
  }
}();