$(function() {
    function EmailCheck(opts) {
        this.el = opts.el;
        this.el1 = opts.el1;
        this.curClass = opts.curClass;
    }
    EmailCheck.prototype = {
        _emailFun: function(_email, _index, _obj) {
            var format = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/,
                e = this;
            if (!_email.match(format)) {
                e._addFunForfalse(_index, _obj);
                return false;
            } else {
                e._removeFun(_index, _obj);
                return true;
            }
        },
        _telFun: function(_tel, _index, _obj) {
            var format = /^[0-9]*$/,
                e = this;
            if (!_tel.match(format)) {
                e._addFunForfalse(_index, _obj);
                return false;
            } else {
                e._removeFun(_index, _obj);
                return true;
            }
        },
        _addFun: function(_index, _obj) {
            var e = this;
            _obj.eq(_index).addClass(e.curClass);
            _obj.eq(_index).val('Can not be empty!');
        },
        _addFunForfalse: function(_index, _obj) {
            var e = this;
            _obj.eq(_index).addClass(e.curClass);
            _obj.eq(_index).val('Input is wrong, please input again!');
        },
        _removeFun: function(_index, _obj) {
            var e = this;
            _obj.eq(_index).removeClass(e.curClass);
        },
        _checkFun: function(_index, _obj) {
            var e = this;
            if (_obj.eq(_index).attr('name') == 'email') {
                var _email = _obj.eq(_index).val();
                e._emailFun(_email, _index, _obj);
            }
            if (_obj.eq(_index).attr('name') == 'phone') {
                var _tel = _obj.eq(_index).val();
                e._telFun(_tel, _index, _obj);
            }
        },
        _submitFun: function(_obj, _valArr, _prevArr) {

            var e = this,
                _valArr = [],
                _prevArr = [];
            _obj.on('click', function(event) {

                event.stopPropagation();
                if ($(this).val() == 'Input is wrong, please input again!' || $(this).val() == 'Can not be empty!') {
                    $(this).val('');
                    $(this).removeClass(e.curClass);
                }
                $(this).parent().prevAll().children('input').each(function(index) {
                    var _value = $(this).val();
                    _prevArr.push(_value);
                });
                _prevArr.reverse();
                for (var k = 0; k < _prevArr.length; k++) {
                    if (_prevArr[k] == '' || _prevArr[k] == '' || _prevArr[k] == '' || _prevArr[k] == '' || _prevArr[k] == 'Input is wrong, please input again!' || $(this).val() == 'Can not be empty!') {
                        e._addFun(k, _obj);
                    } else {
                        e._checkFun(k, _obj);
                    }
                }
                _prevArr = [];

            });

            _obj.parent().find('.sub-btn').on('click', function(event) {


                _obj.each(function(_index) {
                    var _value = $(this).val();
                    _valArr.push(_value);
                    if (_value == 'YOUR EMAIL' || _value == 'Input is wrong, please input again!' || _value == '' ) {
                        
                        e._addFun(_index, _obj);
                    } else {
                        
                        e._checkFun(_index, _obj);
                        _value = $(this).val();
                        _valArr.push(_value);
                    }

                    var _href = window.location.href;
                    $(this).find('.hide-url').attr('value', _href);
                    for (var i = 0; i < _valArr.length; i++) {
                        if (_value == 'Your name' || _value == 'Email address' || _value == 'Your phone' || _value == 'Input is wrong, please input again!') {
                            _valArr = [];
                            return false;
                        }
                    }
                });

                // _obj.parents('form').submit();
            });
        },
        _init: function() {
            var e = this,
                valArr1 = [],
                prevArr1 = [];
            e._submitFun(e.el, valArr1, prevArr1);
        }
    };
    new EmailCheck({
        el: $('#form input'),
        curClass: 'color-style'

    })._init();

});
