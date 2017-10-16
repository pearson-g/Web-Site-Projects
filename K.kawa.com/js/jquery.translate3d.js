window.Modernizr = function(a, b, c) {
    function C(a, b) {
        var c = a.charAt(0).toUpperCase() + a.substr(1),
        d = (a + " " + o.join(c + " ") + c).split(" ");
        return B(d, b)
    }
    function B(a, b) {
        for (var d in a) if (k[a[d]] !== c) return b == "pfx" ? a[d] : !0;
        return ! 1
    }
    function A(a, b) {
        return !! ~ ("" + a).indexOf(b)
    }
    function z(a, b) {
        return typeof a === b
    }
    function y(a, b) {
        return x(n.join(a + ";") + (b || ""))
    }
    function x(a) {
        k.cssText = a
    }
    var d = "2.0.6",
    e = {},
    f = !0,
    g = b.documentElement,
    h = b.head || b.getElementsByTagName("head")[0],
    i = "modernizr",
    j = b.createElement(i),
    k = j.style,
    l,
    m = Object.prototype.toString,
    n = " -webkit- -moz- -o- -ms- -khtml- ".split(" "),
    o = "Webkit Moz O ms Khtml".split(" "),
    p = {},
    q = {},
    r = {},
    s = [],
    t = function(a, c, d, e) {
        var f, h, j, k = b.createElement("div");
        if (parseInt(d, 10)) while (d--) j = b.createElement("div"),
        j.id = e ? e[d] : i + (d + 1),
        k.appendChild(j);
        f = ["&shy;", "<style>", a, "</style>"].join(""),
        k.id = i,
        k.innerHTML += f,
        g.appendChild(k),
        h = c(k, a),
        k.parentNode.removeChild(k);
        return !! h
    },
    u,
    v = {}.hasOwnProperty,
    w; ! z(v, c) && !z(v.call, c) ? w = function(a, b) {
        return v.call(a, b)
    }: w = function(a, b) {
        return b in a && z(a.constructor.prototype[b], c)
    };
    var D = function(a, c) {
        var d = a.join(""),
        f = c.length;
        t(d,
        function(a, c) {
            var d = b.styleSheets[b.styleSheets.length - 1],
            g = d.cssRules && d.cssRules[0] ? d.cssRules[0].cssText: d.cssText || "",
            h = a.childNodes,
            i = {};
            while (f--) i[h[f].id] = h[f];
            e.csstransforms3d = i.csstransforms3d.offsetLeft === 9
        },
        f, c)
    } ([, ["@media (", n.join("transform-3d),("), i, ")", "{#csstransforms3d{left:9px;position:absolute}}"].join("")], [, "csstransforms3d"]);
    p.csstransforms = function() {
        return !! B(["transformProperty", "WebkitTransform", "MozTransform", "OTransform", "msTransform"])
    },
    p.csstransforms3d = function() {
        var a = !!B(["perspectiveProperty", "WebkitPerspective", "MozPerspective", "OPerspective", "msPerspective"]);
        a && "webkitPerspective" in g.style && (a = e.csstransforms3d);
        return a
    },
    p.csstransitions = function() {
        return C("transitionProperty")
    };
    for (var E in p) w(p, E) && (u = E.toLowerCase(), e[u] = p[E](), s.push((e[u] ? "": "no-") + u));
    x(""),
    j = l = null,
    a.attachEvent &&
    function() {
        var a = b.createElement("div");
        a.innerHTML = "<elem></elem>";
        return a.childNodes.length !== 1
    } () &&
    function(a, b) {
        function s(a) {
            var b = -1;
            while (++b < g) a.createElement(f[b])
        }
        a.iepp = a.iepp || {};
        var d = a.iepp,
        e = d.html5elements || "abbr|article|aside|audio|canvas|datalist|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video",
        f = e.split("|"),
        g = f.length,
        h = new RegExp("(^|\\s)(" + e + ")", "gi"),
        i = new RegExp("<(/*)(" + e + ")", "gi"),
        j = /^\s*[\{\}]\s*$/,
        k = new RegExp("(^|[^\\n]*?\\s)(" + e + ")([^\\n]*)({[\\n\\w\\W]*?})", "gi"),
        l = b.createDocumentFragment(),
        m = b.documentElement,
        n = m.firstChild,
        o = b.createElement("body"),
        p = b.createElement("style"),
        q = /print|all/,
        r;
        d.getCSS = function(a, b) {
            if (a + "" === c) return "";
            var e = -1,
            f = a.length,
            g, h = [];
            while (++e < f) {
                g = a[e];
                if (g.disabled) continue;
                b = g.media || b,
                q.test(b) && h.push(d.getCSS(g.imports, b), g.cssText),
                b = "all"
            }
            return h.join("")
        },
        d.parseCSS = function(a) {
            var b = [],
            c;
            while ((c = k.exec(a)) != null) b.push(((j.exec(c[1]) ? "\n": c[1]) + c[2] + c[3]).replace(h, "$1.iepp_$2") + c[4]);
            return b.join("\n")
        },
        d.writeHTML = function() {
            var a = -1;
            r = r || b.body;
            while (++a < g) {
                var c = b.getElementsByTagName(f[a]),
                d = c.length,
                e = -1;
                while (++e < d) c[e].className.indexOf("iepp_") < 0 && (c[e].className += " iepp_" + f[a])
            }
            l.appendChild(r),
            m.appendChild(o),
            o.className = r.className,
            o.id = r.id,
            o.innerHTML = r.innerHTML.replace(i, "<$1font")
        },
        d._beforePrint = function() {
            p.styleSheet.cssText = d.parseCSS(d.getCSS(b.styleSheets, "all")),
            d.writeHTML()
        },
        d.restoreHTML = function() {
            o.innerHTML = "",
            m.removeChild(o),
            m.appendChild(r)
        },
        d._afterPrint = function() {
            d.restoreHTML(),
            p.styleSheet.cssText = ""
        },
        s(b),
        s(l);
        d.disablePP || (n.insertBefore(p, n.firstChild), p.media = "print", p.className = "iepp-printshim", a.attachEvent("onbeforeprint", d._beforePrint), a.attachEvent("onafterprint", d._afterPrint))
    } (a, b),
    e._version = d,
    e._prefixes = n,
    e._domPrefixes = o,
    e.testProp = function(a) {
        return B([a])
    },
    e.testAllProps = C,
    e.testStyles = t,
    g.className = g.className.replace(/\bno-js\b/, "") + (f ? " js " + s.join(" ") : "");
    return e
} (this, this.document),
function(a, b, c) {
    function k(a) {
        return ! a || a == "loaded" || a == "complete"
    }
    function j() {
        var a = 1,
        b = -1;
        while (p.length - ++b) if (p[b].s && !(a = p[b].r)) break;
        a && g()
    }
    function i(a) {
        var c = b.createElement("script"),
        d;
        c.src = a.s,
        c.onreadystatechange = c.onload = function() { ! d && k(c.readyState) && (d = 1, j(), c.onload = c.onreadystatechange = null)
        },
        m(function() {
            d || (d = 1, j())
        },
        H.errorTimeout),
        a.e ? c.onload() : n.parentNode.insertBefore(c, n)
    }
    function h(a) {
        var c = b.createElement("link"),
        d;
        c.href = a.s,
        c.rel = "stylesheet",
        c.type = "text/css";
        if (!a.e && (w || r)) {
            var e = function(a) {
                m(function() {
                    if (!d) try {
                        a.sheet.cssRules.length ? (d = 1, j()) : e(a)
                    } catch(b) {
                        b.code == 1e3 || b.message == "security" || b.message == "denied" ? (d = 1, m(function() {
                            j()
                        },
                        0)) : e(a)
                    }
                },
                0)
            };
            e(c)
        } else c.onload = function() {
            d || (d = 1, m(function() {
                j()
            },
            0))
        },
        a.e && c.onload();
        m(function() {
            d || (d = 1, j())
        },
        H.errorTimeout),
        !a.e && n.parentNode.insertBefore(c, n)
    }
    function g() {
        var a = p.shift();
        q = 1,
        a ? a.t ? m(function() {
            a.t == "c" ? h(a) : i(a)
        },
        0) : (a(), j()) : q = 0
    }
    function f(a, c, d, e, f, h) {
        function i() { ! o && k(l.readyState) && (r.r = o = 1, !q && j(), l.onload = l.onreadystatechange = null, m(function() {
                u.removeChild(l)
            },
            0))
        }
        var l = b.createElement(a),
        o = 0,
        r = {
            t: d,
            s: c,
            e: h
        };
        l.src = l.data = c,
        !s && (l.style.display = "none"),
        l.width = l.height = "0",
        a != "object" && (l.type = d),
        l.onload = l.onreadystatechange = i,
        a == "img" ? l.onerror = i: a == "script" && (l.onerror = function() {
            r.e = r.r = 1,
            g()
        }),
        p.splice(e, 0, r),
        u.insertBefore(l, s ? null: n),
        m(function() {
            o || (u.removeChild(l), r.r = r.e = o = 1, j())
        },
        H.errorTimeout)
    }
    function e(a, b, c) {
        var d = b == "c" ? z: y;
        q = 0,
        b = b || "j",
        C(a) ? f(d, a, b, this.i++, l, c) : (p.splice(this.i++, 0, a), p.length == 1 && g());
        return this
    }
    function d() {
        var a = H;
        a.loader = {
            load: e,
            i: 0
        };
        return a
    }
    var l = b.documentElement,
    m = a.setTimeout,
    n = b.getElementsByTagName("script")[0],
    o = {}.toString,
    p = [],
    q = 0,
    r = "MozAppearance" in l.style,
    s = r && !!b.createRange().compareNode,
    t = r && !s,
    u = s ? l: n.parentNode,
    v = a.opera && o.call(a.opera) == "[object Opera]",
    w = "webkitAppearance" in l.style,
    x = w && "async" in b.createElement("script"),
    y = r ? "object": v || x ? "img": "script",
    z = w ? "img": y,
    A = Array.isArray ||
    function(a) {
        return o.call(a) == "[object Array]"
    },
    B = function(a) {
        return Object(a) === a
    },
    C = function(a) {
        return typeof a == "string"
    },
    D = function(a) {
        return o.call(a) == "[object Function]"
    },
    E = [],
    F = {},
    G,
    H;
    H = function(a) {
        function f(a) {
            var b = a.split("!"),
            c = E.length,
            d = b.pop(),
            e = b.length,
            f = {
                url: d,
                origUrl: d,
                prefixes: b
            },
            g,
            h;
            for (h = 0; h < e; h++) g = F[b[h]],
            g && (f = g(f));
            for (h = 0; h < c; h++) f = E[h](f);
            return f
        }
        function e(a, b, e, g, h) {
            var i = f(a),
            j = i.autoCallback;
            if (!i.bypass) {
                b && (b = D(b) ? b: b[a] || b[g] || b[a.split("/").pop().split("?")[0]]);
                if (i.instead) return i.instead(a, b, e, g, h);
                e.load(i.url, i.forceCSS || !i.forceJS && /css$/.test(i.url) ? "c": c, i.noexec),
                (D(b) || D(j)) && e.load(function() {
                    d(),
                    b && b(i.origUrl, h, g),
                    j && j(i.origUrl, h, g)
                })
            }
        }
        function b(a, b) {
            function c(a) {
                if (C(a)) e(a, h, b, 0, d);
                else if (B(a)) for (i in a) a.hasOwnProperty(i) && e(a[i], h, b, i, d)
            }
            var d = !!a.test,
            f = d ? a.yep: a.nope,
            g = a.load || a.both,
            h = a.callback,
            i;
            c(f),
            c(g),
            a.complete && b.load(a.complete)
        }
        var g, h, i = this.yepnope.loader;
        if (C(a)) e(a, 0, i, 0);
        else if (A(a)) for (g = 0; g < a.length; g++) h = a[g],
        C(h) ? e(h, 0, i, 0) : A(h) ? H(h) : B(h) && b(h, i);
        else B(a) && b(a, i)
    },
    H.addPrefix = function(a, b) {
        F[a] = b
    },
    H.addFilter = function(a) {
        E.push(a)
    },
    H.errorTimeout = 1e4,
    b.readyState == null && b.addEventListener && (b.readyState = "loading", b.addEventListener("DOMContentLoaded", G = function() {
        b.removeEventListener("DOMContentLoaded", G, 0),
        b.readyState = "complete"
    },
    0)),
    a.yepnope = d()
} (this, this.document),
Modernizr.load = function() {
    yepnope.apply(window, [].slice.call(arguments, 0))
};
(function(e, t) {
    e.Gallery = function(t, n) {
        this.$el = e(n),
        this._init(t)
    },
    e.Gallery.defaults = {
        current: 0,
        autoplay: false,
        interval: 2e3
    },
    e.Gallery.prototype = {
        _validate: function() {
            if (this.options.current < 0 || this.options.current > this.itemsCount - 1) this.current = 0
        },
        _layout: function() {
            var _self = this;
            _self._setItems();
            var e, t, n;
            _self.support3d && _self.supportTrans ? (
                e = {
                    "-webkit-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    "-moz-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    "-o-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    "-ms-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    transform: "translateX(-320px) translateZ(-200px) rotateY(45deg)"
                },
                t = {
                    "-webkit-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    "-moz-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    "-o-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    "-ms-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    transform: "translateX(320px) translateZ(-200px) rotateY(-45deg)"
                },
                e.opacity = 1, e.visibility = "visible", t.opacity = 1, t.visibility = "visible") : _self.support2d && _self.supportTrans && (e = {
                    "-webkit-transform": "translate(-320px) scale(0.8)",
                    "-moz-transform": "translate(-320px) scale(0.8)",
                    "-o-transform": "translate(-320px) scale(0.8)",
                    "-ms-transform": "translate(-320px) scale(0.8)",
                    transform: "translate(-320px) scale(0.8)"
                },
                t = {
                    "-webkit-transform": "translate(320px) scale(0.8)",
                    "-moz-transform": "translate(320px) scale(0.8)",
                    "-o-transform": "translate(320px) scale(0.8)",
                    "-ms-transform": "translate(320px) scale(0.8)",
                    transform: "translate(320px) scale(0.8)"
                },
                n = {
                    "z-index": 999
                },
                e.opacity = 1, e.visibility = "visible", t.opacity = 1, t.visibility = "visible"),
                _self.$leftItm.css(e || {}),
                _self.$rightItm.css(t || {}),
                _self.$currentItm.css(n || {}).css({
                    opacity: 1,
                    visibility: "visible"
                }).addClass("dg-center")
        },
        _setItems: function() {
            var _self = this;
            _self.$items.removeClass("dg-center"),
            _self.$currentItm = _self.$items.eq(_self.current),
            _self.$leftItm = _self.current === 0 ? _self.$items.eq(_self.itemsCount - 1) : _self.$items.eq(_self.current - 1),
            _self.$rightItm = _self.current === _self.itemsCount - 1 ? _self.$items.eq(0) : _self.$items.eq(_self.current + 1),
            !_self.support3d && _self.support2d && _self.supportTrans && (_self.$items.css("z-index", 1), _self.$currentItm.css("z-index", 999)),
            _self.itemsCount > 3 && (_self.$nextItm = _self.$rightItm.index() === _self.itemsCount - 1 ? _self.$items.eq(0) : _self.$rightItm.next(), _self.$nextItm.css(_self._getCoordinates("outright")), _self.$prevItm = _self.$leftItm.index() === 0 ? _self.$items.eq(_self.itemsCount - 1) : _self.$leftItm.prev(), _self.$prevItm.css(_self._getCoordinates("outleft")))
        },
        _loadEvents: function() {
            this.$navPrev.on("click.gallery",
            function(t) {
                e._navigate("prev");
            }),
            this.$navNext.on("click.gallery",
            function(t) {
                e._navigate("next");
            }),
            this.$wrapper.on("webkitTransitionEnd.gallery transitionend.gallery OTransitionEnd.gallery",
            function(t) {
                e.$currentItm.addClass("dg-center"),
                e.$items.removeClass("dg-transition"),
                e.isAnim = !1
            })
        },
        _getCoordinates: function(e) {
            var _self = this;
            if (_self.support3d && _self.supportTrans) switch (e) {
            case "outleft":
                return {
                    "-webkit-transform":
                    "translateX(-450px) translateZ(-300px) rotateY(45deg)",
                    "-moz-transform": "translateX(-450px) translateZ(-300px) rotateY(45deg)",
                    "-o-transform": "translateX(-450px) translateZ(-300px) rotateY(45deg)",
                    "-ms-transform": "translateX(-450px) translateZ(-300px) rotateY(45deg)",
                    transform: "translateX(-450px) translateZ(-300px) rotateY(45deg)",
                    opacity: 0,
                    visibility: "hidden"
                };
            case "outright":
                return {
                    "-webkit-transform":
                    "translateX(450px) translateZ(-300px) rotateY(-45deg)",
                    "-moz-transform": "translateX(450px) translateZ(-300px) rotateY(-45deg)",
                    "-o-transform": "translateX(450px) translateZ(-300px) rotateY(-45deg)",
                    "-ms-transform": "translateX(450px) translateZ(-300px) rotateY(-45deg)",
                    transform: "translateX(450px) translateZ(-300px) rotateY(-45deg)",
                    opacity: 0,
                    visibility: "hidden"
                };
            case "left":
                return {
                    "-webkit-transform":
                    "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    "-moz-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    "-o-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    "-ms-transform": "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    transform: "translateX(-320px) translateZ(-200px) rotateY(45deg)",
                    opacity: 1,
                    visibility: "visible"
                };
            case "right":
                return {
                    "-webkit-transform":
                    "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    "-moz-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    "-o-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    "-ms-transform": "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    transform: "translateX(320px) translateZ(-200px) rotateY(-45deg)",
                    opacity: 1,
                    visibility: "visible"
                };
            case "center":
                return {
                    "-webkit-transform":
                    "translateX(0px) translateZ(0px) rotateY(0deg)",
                    "-moz-transform": "translateX(0px) translateZ(0px) rotateY(0deg)",
                    "-o-transform": "translateX(0px) translateZ(0px) rotateY(0deg)",
                    "-ms-transform": "translateX(0px) translateZ(0px) rotateY(0deg)",
                    transform: "translateX(0px) translateZ(0px) rotateY(0deg)",
                    opacity: 1,
                    visibility: "visible"
                }
            } else if (_self.support2d && _self.supportTrans) switch (e) {
            case "outleft":
                return {
                    "-webkit-transform":
                    "translate(-450px) scale(0.7)",
                    "-moz-transform": "translate(-450px) scale(0.7)",
                    "-o-transform": "translate(-450px) scale(0.7)",
                    "-ms-transform": "translate(-450px) scale(0.7)",
                    transform: "translate(-450px) scale(0.7)",
                    opacity: 0,
                    visibility: "hidden"
                };
            case "outright":
                return {
                    "-webkit-transform":
                    "translate(450px) scale(0.7)",
                    "-moz-transform": "translate(450px) scale(0.7)",
                    "-o-transform": "translate(450px) scale(0.7)",
                    "-ms-transform": "translate(450px) scale(0.7)",
                    transform: "translate(450px) scale(0.7)",
                    opacity: 0,
                    visibility: "hidden"
                };
            case "left":
                return {
                    "-webkit-transform":
                    "translate(-320px) scale(0.8)",
                    "-moz-transform": "translate(-320px) scale(0.8)",
                    "-o-transform": "translate(-320px) scale(0.8)",
                    "-ms-transform": "translate(-320px) scale(0.8)",
                    transform: "translate(-320px) scale(0.8)",
                    opacity: 1,
                    visibility: "visible"
                };
            case "right":
                return {
                    "-webkit-transform":
                    "translate(320px) scale(0.8)",
                    "-moz-transform": "translate(320px) scale(0.8)",
                    "-o-transform": "translate(320px) scale(0.8)",
                    "-ms-transform": "translate(320px) scale(0.8)",
                    transform: "translate(320px) scale(0.8)",
                    opacity: 1,
                    visibility: "visible"
                };
            case "center":
                return {
                    "-webkit-transform":
                    "translate(0px) scale(1)",
                    "-moz-transform": "translate(0px) scale(1)",
                    "-o-transform": "translate(0px) scale(1)",
                    "-ms-transform": "translate(0px) scale(1)",
                    transform: "translate(0px) scale(1)",
                    opacity: 1,
                    visibility: "visible"
                }
            } else switch (e) {
            case "outleft":
            case "outright":
            case "left":
            case "right":
                return {
                    opacity:0,
                    visibility: "hidden"
                };
            case "center":
                return {
                    opacity:1,
                    visibility: "visible"
                }
            }
        },
        _navigate: function(e) {
            if (this.supportTrans && this.isAnim) return ! 1;
            this.isAnim = !0;
            switch (e) {
            case "next":
                this.current = this.$rightItm.index(),
                this.$currentItm.addClass("dg-transition").css(this._getCoordinates("left")),
                this.$rightItm.addClass("dg-transition").css(this._getCoordinates("center")),
                this.$nextItm ? (this.$leftItm.addClass("dg-transition").css(this._getCoordinates("outleft")), this.$nextItm.addClass("dg-transition").css(this._getCoordinates("right"))) : this.$leftItm.addClass("dg-transition").css(this._getCoordinates("right"));
                break;
            case "prev":
                this.current = this.$leftItm.index(),
                this.$currentItm.addClass("dg-transition").css(this._getCoordinates("right")),
                this.$leftItm.addClass("dg-transition").css(this._getCoordinates("center")),
                this.$prevItm ? (this.$rightItm.addClass("dg-transition").css(this._getCoordinates("outright")), this.$prevItm.addClass("dg-transition").css(this._getCoordinates("left"))) : this.$rightItm.addClass("dg-transition").css(this._getCoordinates("left"))
            }
            this._setItems(),
            this.supportTrans || this.$currentItm.addClass("dg-center")
        },
        _startSlideshow: function() {
            if(e.autoplay){
                e.slideshow = setInterval(function() {
                    e._navigate("next");
                },e.options.interval)
            }
        },
        _evtHover: function(_obj,_flag){
            _obj.hover(function() {
                    clearInterval(e.slideshow);
                    e.autoplay = false;
                }, function() {
                    if(_flag == 1){
                        e._startSlideshow();
                        e.autoplay = true;
                    }
                    if(_flag == 2){
                        e.autoplay = true;
                        e._startSlideshow();
                    }
                });
        },
        destroy: function() {
            this.$navPrev.off(".gallery"),
            this.$navNext.off(".gallery"),
            this.$wrapper.off(".gallery")
        },
        _init: function(t) {
            this.options = e.extend(!0, {},
            e.Gallery.defaults, t),
            e = this,
            this.support3d = Modernizr.csstransforms3d,
            this.support2d = Modernizr.csstransforms,
            this.supportTrans = Modernizr.csstransitions,
            this.$wrapper = this.$el.find(".dg-wrapper"),
            this.$items = this.$wrapper.children().children(),
            this.itemsCount = this.$items.length,
            e.slideshow = this.slideshow,
            this.$nav = this.$el.find(".dg-nav"),
            this.$navPrev = this.$nav.find(".dg-prev"),
            this.$navNext = this.$nav.find(".dg-next");
            if (this.itemsCount < 3) return this.$nav.remove(),
            !1;
            this.current = this.options.current,
            e.autoplay = this.options.autoplay,
            this.isAnim = !1,
            this.$items.css({
                opacity: 0,
                visibility: "hidden"
            }),
            this._validate(),
            this._layout(),
            this._loadEvents(),
            this._startSlideshow(),
            this._evtHover(e.$navPrev,1),
            this._evtHover(e.$navNext,1),
            this._evtHover(e.$el,2);
        }
    };
    var n = function(e) {
        this.console && console.error(e)
    };
    e.fn.gallery = function(t) {
        if (typeof t == "string") {
            var r = Array.prototype.slice.call(arguments, 1);
            this.each(function() {
                var i = e.data(this, "gallery");
                if (!i) {
                    n("cannot call methods on gallery prior to initialization; attempted to call method '" + t + "'");
                    return
                }
                if (!e.isFunction(i[t]) || t.charAt(0) === "_") {
                    n("no such method '" + t + "' for gallery instance");
                    return
                }
                i[t].apply(i, r)
            })
        } else this.each(function() {
            var n = e.data(this, "gallery");
            n || e.data(this, "gallery", new e.Gallery(t, this))
        });
        return this
    }
})(jQuery);
$(function(){
    $('.dg-container').gallery({
        autoplay: true
    });
    $('.development-slidebox li').each(function(){
        $(this).hover(function() {
            $(this).addClass('active').siblings().removeClass('active');
        });
    });
});