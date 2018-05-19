function OnCtrl_Init(s, e) {
    var ctrl = s.GetInputElement();
    ctrl.placeholder = "Type something";
}

function OnLb_Init(s, e) {
    if (!hasPlaceholderSupport())
        dxLb.SetText("Your browser does not support the placeholder attribute");
}

function hasPlaceholderSupport() {
    var input = document.createElement('input');
    return ('placeholder' in input);
}