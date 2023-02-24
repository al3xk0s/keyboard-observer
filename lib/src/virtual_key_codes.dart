/*
 * [V]irtual [K]ey codes table
 * Symbolic constant name = decimal value 1..255
 */

class VirtualKey {
  const VirtualKey._(
    this.code,
    this.name,
  ) : assert(code > 0 && code < 256);
  final int code;
  final String name;

  @override
  operator ==(covariant VirtualKey other) => code == other.code;

  @override
  int get hashCode => code.hashCode;

  @override
  String toString() {
    return name;
  }

  static const leftMouse = VirtualKey._(1, 'leftMouse');
  static const rigthMouse = VirtualKey._(2, 'rigthMouse');

  /// Control-break processing
  static const cancel = VirtualKey._(3, 'cancel');

  /// Middle mouse button (three-button mouse)
  static const middleMouse = VirtualKey._(4, 'middleMouse');

  /// Windows 2000: X1 mouse button
  static const xButton1 = VirtualKey._(5, 'xButton1');

  /// Windows 2000: X2 mouse button
  static const xButton2 = VirtualKey._(6, 'xButton2');

  /// BACKSPACE key
  static const back = VirtualKey._(8, 'back');

  /// TAB key
  static const tab = VirtualKey._(9, 'tab');

  /// CLEAR key
  static const clear = VirtualKey._(12, 'clear');

  /// ENTER key
  static const enter = VirtualKey._(13, 'enter');

  /// SHIFT key
  static const shift = VirtualKey._(16, 'shift');

  /// CTRL key
  static const control = VirtualKey._(17, 'control');

  /// ALT key
  static const menu = VirtualKey._(18, 'menu');

  /// PAUSE key
  static const pause = VirtualKey._(19, 'pause');

  /// CAPS LOCK key
  static const capital = VirtualKey._(20, 'capital');

  /// IME Kana mode
  static const kana = VirtualKey._(21, 'kana');

  /// IME Hanguel mode (maintained for compatibility; use hANGUL)
  static const hanguel = VirtualKey._(21, 'hanguel');

  /// IME Hangul mode
  static const hangul = VirtualKey._(21, 'hangul');

  /// IME Junja mode
  static const junja = VirtualKey._(23, 'junja');

  /// IME final mode
  static const finalKey = VirtualKey._(24, 'finalKey');

  /// IME Hanja mode
  static const hanja = VirtualKey._(25, 'hanja');

  /// IME Kanji mode
  static const kanji = VirtualKey._(25, 'kanji');

  /// ESC key
  static const escape = VirtualKey._(27, 'escape');

  /// IME convert
  static const convert = VirtualKey._(28, 'convert');

  /// IME nonconvert
  static const nonconvert = VirtualKey._(29, 'nonconvert');

  /// IME accept
  static const accept = VirtualKey._(30, 'accept');

  /// IME mode change request
  static const modechange = VirtualKey._(31, 'modechange');

  /// SPACEBAR
  static const space = VirtualKey._(32, 'space');

  /// PAGE UP key
  static const prior = VirtualKey._(33, 'prior');

  /// PAGE DOWN key
  static const next = VirtualKey._(34, 'next');

  /// END key
  static const end = VirtualKey._(35, 'end');

  /// HOME key
  static const home = VirtualKey._(36, 'home');

  /// LEFT ARROW key
  static const left = VirtualKey._(37, 'left');

  /// UP ARROW key
  static const up = VirtualKey._(38, 'up');

  /// RIGHT ARROW key
  static const right = VirtualKey._(39, 'right');

  /// DOWN ARROW key
  static const down = VirtualKey._(40, 'down');

  /// SELECT key
  static const select = VirtualKey._(41, 'select');

  /// PRINT key
  static const print = VirtualKey._(42, 'print');

  /// EXECUTE key
  static const execute = VirtualKey._(43, 'execute');

  /// PRINT SCREEN key
  static const snapshot = VirtualKey._(44, 'snapshot');

  /// INS key
  static const insert = VirtualKey._(45, 'insert');

  /// DEL key
  static const delete = VirtualKey._(46, 'delete');

  /// HELP key
  static const help = VirtualKey._(47, 'help');

  /// 0 key
  static const num0 = VirtualKey._(48, 'num0');

  /// 1 key
  static const num1 = VirtualKey._(49, 'num1');

  /// 2 key
  static const num2 = VirtualKey._(50, 'num2');

  /// 3 key
  static const num3 = VirtualKey._(51, 'num3');

  /// 4 key
  static const num4 = VirtualKey._(52, 'num4');

  /// 5 key
  static const num5 = VirtualKey._(53, 'num5');

  /// 6 key
  static const num6 = VirtualKey._(54, 'num6');

  /// 7 key
  static const num7 = VirtualKey._(55, 'num7');

  /// 8 key
  static const num8 = VirtualKey._(56, 'num8');

  /// 9 key
  static const num9 = VirtualKey._(57, 'num9');

  /// A key
  static const a = VirtualKey._(65, 'a');

  /// B key
  static const b = VirtualKey._(66, 'b');

  /// C key
  static const c = VirtualKey._(67, 'c');

  /// D key
  static const d = VirtualKey._(68, 'd');

  /// E key
  static const e = VirtualKey._(69, 'e');

  /// F key
  static const f = VirtualKey._(70, 'f');

  /// G key
  static const g = VirtualKey._(71, 'g');

  /// H key
  static const h = VirtualKey._(72, 'h');

  /// I key
  static const i = VirtualKey._(73, 'i');

  /// J key
  static const j = VirtualKey._(74, 'j');

  /// K key
  static const k = VirtualKey._(75, 'k');

  /// L key
  static const l = VirtualKey._(76, 'l');

  /// M key
  static const m = VirtualKey._(77, 'm');

  /// N key
  static const n = VirtualKey._(78, 'n');

  /// O key
  static const o = VirtualKey._(79, 'o');

  /// P key
  static const p = VirtualKey._(80, 'p');

  /// Q key
  static const q = VirtualKey._(81, 'q');

  /// R key
  static const r = VirtualKey._(82, 'r');

  /// S key
  static const s = VirtualKey._(83, 's');

  /// T key
  static const t = VirtualKey._(84, 't');

  /// U key
  static const u = VirtualKey._(85, 'u');

  /// V key
  static const v = VirtualKey._(86, 'v');

  /// W key
  static const w = VirtualKey._(87, 'w');

  /// X key
  static const x = VirtualKey._(88, 'x');

  /// Y key
  static const y = VirtualKey._(89, 'y');

  /// Z key
  static const z = VirtualKey._(90, 'z');

  /// Left Windows key (Microsoft® Natural® keyboard)
  static const lwin = VirtualKey._(91, 'lwin');

  /// Right Windows key (Natural keyboard)
  static const rwin = VirtualKey._(92, 'rwin');

  /// Applications key (Natural keyboard)
  static const apps = VirtualKey._(93, 'apps');

  /// Computer Sleep key
  static const sleep = VirtualKey._(95, 'sleep');

  /// Numeric keypad 0 key
  static const numpad0 = VirtualKey._(96, 'numpad0');

  /// Numeric keypad 1 key
  static const numpad1 = VirtualKey._(97, 'numpad1');

  /// Numeric keypad 2 key
  static const numpad2 = VirtualKey._(98, 'numpad2');

  /// Numeric keypad 3 key
  static const numpad3 = VirtualKey._(99, 'numpad3');

  /// Numeric keypad 4 key
  static const numpad4 = VirtualKey._(100, 'numpad4');

  /// Numeric keypad 5 key
  static const numpad5 = VirtualKey._(101, 'numpad5');

  /// Numeric keypad 6 key
  static const numpad6 = VirtualKey._(102, 'numpad6');

  /// Numeric keypad 7 key
  static const numpad7 = VirtualKey._(103, 'numpad7');

  /// Numeric keypad 8 key
  static const numpad8 = VirtualKey._(104, 'numpad8');

  /// Numeric keypad 9 key
  static const numpad9 = VirtualKey._(105, 'numpad9');

  /// Multiply key
  static const multiply = VirtualKey._(106, 'multiply');

  /// Add key
  static const add = VirtualKey._(107, 'add');

  /// Separator key
  static const separator = VirtualKey._(108, 'separator');

  /// Subtract key
  static const subtract = VirtualKey._(109, 'subtract');

  /// Decimal key
  static const decimal = VirtualKey._(110, 'decimal');

  /// Divide key
  static const divide = VirtualKey._(111, 'divide');

  /// F1 key
  static const f1 = VirtualKey._(112, 'f1');

  /// F2 key
  static const f2 = VirtualKey._(113, 'f2');

  /// F3 key
  static const f3 = VirtualKey._(114, 'f3');

  /// F4 key
  static const f4 = VirtualKey._(115, 'f4');

  /// F5 key
  static const f5 = VirtualKey._(116, 'f5');

  /// F6 key
  static const f6 = VirtualKey._(117, 'f6');

  /// F7 key
  static const f7 = VirtualKey._(118, 'f7');

  /// F8 key
  static const f8 = VirtualKey._(119, 'f8');

  /// F9 key
  static const f9 = VirtualKey._(120, 'f9');

  /// F10 key
  static const f10 = VirtualKey._(121, 'f10');

  /// F11 key
  static const f11 = VirtualKey._(122, 'f11');

  /// F12 key
  static const f12 = VirtualKey._(123, 'f12');

  /// F13 key
  static const f13 = VirtualKey._(124, 'f13');

  /// F14 key
  static const f14 = VirtualKey._(125, 'f14');

  /// F15 key
  static const f15 = VirtualKey._(126, 'f15');

  /// F16 key
  static const f16 = VirtualKey._(127, 'f16');

  /// F17 key
  static const f17 = VirtualKey._(128, 'f17');

  /// F18 key
  static const f18 = VirtualKey._(129, 'f18');

  /// F19 key
  static const f19 = VirtualKey._(130, 'f19');

  /// F20 key
  static const f20 = VirtualKey._(131, 'f20');

  /// F21 key
  static const f21 = VirtualKey._(132, 'f21');

  /// F22 key
  static const f22 = VirtualKey._(133, 'f22');

  /// F23 key
  static const f23 = VirtualKey._(134, 'f23');

  /// F24 key
  static const f24 = VirtualKey._(135, 'f24');

  /// NUM LOCK key
  static const numlock = VirtualKey._(144, 'numlock');

  /// SCROLL LOCK key
  static const scroll = VirtualKey._(145, 'scroll');

  /// Left SHIFT key
  static const lshift = VirtualKey._(160, 'lshift');

  /// Right SHIFT key
  static const rshift = VirtualKey._(161, 'rshift');

  /// Left CONTROL key
  static const lcontrol = VirtualKey._(162, 'lcontrol');

  /// Right CONTROL key
  static const rcontrol = VirtualKey._(163, 'rcontrol');

  /// Left MENU key
  static const lmenu = VirtualKey._(164, 'lmenu');

  /// Right MENU key
  static const rmenu = VirtualKey._(165, 'rmenu');

  /// Windows 2000: Browser Back key
  static const browserBack = VirtualKey._(166, 'browserBack');

  /// Windows 2000: Browser Forward key
  static const browserForward = VirtualKey._(167, 'browserForward');

  /// Windows 2000: Browser Refresh key
  static const browserRefresh = VirtualKey._(168, 'browserRefresh');

  /// Windows 2000: Browser Stop key
  static const browserStop = VirtualKey._(169, 'browserStop');

  /// Windows 2000: Browser Search key
  static const browserSearch = VirtualKey._(170, 'browserSearch');

  /// Windows 2000: Browser Favorites key
  static const browserFavorites = VirtualKey._(171, 'browserFavorites');

  /// Windows 2000: Browser Start and Home key
  static const browserHome = VirtualKey._(172, 'browserHome');

  /// Windows 2000: Volume Mute key
  static const volumeMute = VirtualKey._(173, 'volumeMute');

  /// Windows 2000: Volume Down key
  static const volumeDown = VirtualKey._(174, 'volumeDown');

  /// Windows 2000: Volume Up key
  static const volumeUp = VirtualKey._(175, 'volumeUp');

  /// Windows 2000: Next Track key
  static const medianexttrack = VirtualKey._(176, 'medianexttrack');

  /// Windows 2000: Previous Track key
  static const mediaprevtrack = VirtualKey._(177, 'mediaprevtrack');

  /// Windows 2000: Stop Media key
  static const mediaStop = VirtualKey._(178, 'mediaStop');

  /// Windows 2000: Play/Pause Media key
  static const mediaplaypause = VirtualKey._(179, 'mediaplaypause');

  /// Windows 2000: Start Mail key
  static const launchMail = VirtualKey._(180, 'launchMail');

  /// Windows 2000: Select Media key
  static const launchmediaselect = VirtualKey._(181, 'launchmediaselect');

  /// Windows 2000: Start Application 1 key
  static const launchApp1 = VirtualKey._(182, 'launchApp1');

  /// Windows 2000: Start Application 2 key
  static const launchApp2 = VirtualKey._(183, 'launchApp2');

  /// Windows 2000: For the US standard keyboard, the ';:' key
  static const oem1 = VirtualKey._(186, 'oem1');

  /// Windows 2000: For any country/region, the '+' key
  static const oemPlus = VirtualKey._(187, 'oemPlus');

  /// Windows 2000: For any country/region, the ',' key
  static const oemComma = VirtualKey._(188, 'oemComma');

  /// Windows 2000: For any country/region, the '-' key
  static const oemMinus = VirtualKey._(189, 'oemMinus');

  /// Windows 2000: For any country/region, the '.' key
  static const oemPeriod = VirtualKey._(190, 'oemPeriod');

  /// Windows 2000: For the US standard keyboard, the '/?' key
  static const oem2 = VirtualKey._(191, 'oem2');

  /// Windows 2000: For the US standard keyboard, the '`~' key
  static const oem3 = VirtualKey._(192, 'oem3');

  /// Windows 2000: For the US standard keyboard, the '[{' key
  static const oem4 = VirtualKey._(219, 'oem4');

  /// Windows 2000: For the US standard keyboard, the '\|' key
  static const oem5 = VirtualKey._(220, 'oem5');

  /// Windows 2000: For the US standard keyboard, the ']}' key
  static const oem6 = VirtualKey._(221, 'oem6');

  /// Windows 2000: For the US standard keyboard,
  /// the 'single-quote/double-quote' key
  static const oem7 = VirtualKey._(222, 'oem7');

  ///
  static const oem8 = VirtualKey._(223, 'oem8');

  /// Windows 2000: Either the angle bracket key
  /// or the backslash key on the RT 102-key keyboard
  static const oem102 = VirtualKey._(226, 'oem102');

  /// Windows 95/98, Windows NT 4.0, Windows 2000: IME PROCESS key
  static const processkey = VirtualKey._(229, 'processkey');

  /// // Windows 2000: Used to pass Unicode characters
  /// as if they were keystrokes. The packetkey is
  /// the low word of a 32-bit Virtual Key value used
  /// for non-keyboard input methods. For more information,
  /// see Remark in KEYBDINPUT, SendInput, wmKeydown, and wmKeyup
  static const packet = VirtualKey._(231, 'packet');

  /// Attn key
  static const attn = VirtualKey._(246, 'attn');

  /// CrSel key
  static const crsel = VirtualKey._(247, 'crsel');

  /// ExSel key
  static const exsel = VirtualKey._(248, 'exsel');

  /// Erase EOF key
  static const ereof = VirtualKey._(249, 'ereof');

  /// Play key
  static const play = VirtualKey._(250, 'play');

  /// Zoom key
  static const zoom = VirtualKey._(251, 'zoom');

  /// Reserved for future use
  static const noname = VirtualKey._(252, 'noname');

  /// PA1 key
  static const pA1 = VirtualKey._(253, 'pA1');

  /// Clear key
  static const oemClear = VirtualKey._(254, 'oemClear');

  static final Map<int, VirtualKey> _valueMap = Map.fromIterables(
    values.map((e) => e.code), values,
  );

  static const values = [
    leftMouse,
    rigthMouse,
    cancel,
    middleMouse,
    xButton1,
    xButton2,
    back,
    tab,
    clear,
    enter,
    shift,
    control,
    menu,
    pause,
    capital,
    kana,
    hanguel,
    hangul,
    junja,
    finalKey,
    hanja,
    kanji,
    escape,
    convert,
    nonconvert,
    accept,
    modechange,
    space,
    prior,
    next,
    end,
    home,
    left,
    up,
    right,
    down,
    select,
    print,
    execute,
    snapshot,
    insert,
    delete,
    help,
    num0,
    num1,
    num2,
    num3,
    num4,
    num5,
    num6,
    num7,
    num8,
    num9,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    h,
    i,
    j,
    k,
    l,
    m,
    n,
    o,
    p,
    q,
    r,
    s,
    t,
    u,
    v,
    w,
    x,
    y,
    z,
    lwin,
    rwin,
    apps,
    sleep,
    numpad0,
    numpad1,
    numpad2,
    numpad3,
    numpad4,
    numpad5,
    numpad6,
    numpad7,
    numpad8,
    numpad9,
    multiply,
    add,
    separator,
    subtract,
    decimal,
    divide,
    f1,
    f2,
    f3,
    f4,
    f5,
    f6,
    f7,
    f8,
    f9,
    f10,
    f11,
    f12,
    f13,
    f14,
    f15,
    f16,
    f17,
    f18,
    f19,
    f20,
    f21,
    f22,
    f23,
    f24,
    numlock,
    scroll,
    lshift,
    rshift,
    lcontrol,
    rcontrol,
    lmenu,
    rmenu,
    browserBack,
    browserForward,
    browserRefresh,
    browserStop,
    browserSearch,
    browserFavorites,
    browserHome,
    volumeMute,
    volumeDown,
    volumeUp,
    medianexttrack,
    mediaprevtrack,
    mediaStop,
    mediaplaypause,
    launchMail,
    launchmediaselect,
    launchApp1,
    launchApp2,
    oem1,
    oemPlus,
    oemComma,
    oemMinus,
    oemPeriod,
    oem2,
    oem3,
    oem4,
    oem5,
    oem6,
    oem7,
    oem8,
    oem102,
    processkey,
    packet,
    attn,
    crsel,
    exsel,
    ereof,
    play,
    zoom,
    noname,
    pA1,
    oemClear,
  ];

  factory VirtualKey.parse(int code) {
    try {
      return _valueMap[code]!;
    } catch (_) {
      throw Exception('Invalid code argument: $code');
    }
  }
}

extension VirtualKeyCodesxon on String {
  /// Convert [String] to [Iterable] of Keyboard virtual key codes
  Iterable<VirtualKey> get keyCodes => codeUnits
      .map<VirtualKey?>((e) => _codeUnitToVirtualKeyCode[e])
      .where((element) => element != null)
      .whereType<VirtualKey>();
}

const Map<int, VirtualKey> _codeUnitToVirtualKeyCode = <int, VirtualKey>{
  // Spaces
  9: VirtualKey.tab,
  32: VirtualKey.space,

  // Math
  42: VirtualKey.multiply,
  43: VirtualKey.add,
  45: VirtualKey.subtract,
  46: VirtualKey.decimal,
  47: VirtualKey.divide,

  // Digits
  48: VirtualKey.num0,
  49: VirtualKey.num1,
  50: VirtualKey.num2,
  51: VirtualKey.num3,
  52: VirtualKey.num4,
  53: VirtualKey.num5,
  54: VirtualKey.num6,
  55: VirtualKey.num7,
  56: VirtualKey.num8,
  57: VirtualKey.num9,

  // Upper case
  65: VirtualKey.a,
  66: VirtualKey.b,
  67: VirtualKey.c,
  68: VirtualKey.d,
  69: VirtualKey.e,
  70: VirtualKey.f,
  71: VirtualKey.g,
  72: VirtualKey.h,
  73: VirtualKey.i,
  74: VirtualKey.j,
  75: VirtualKey.k,
  76: VirtualKey.l,
  77: VirtualKey.m,
  78: VirtualKey.n,
  79: VirtualKey.o,
  80: VirtualKey.p,
  81: VirtualKey.q,
  82: VirtualKey.r,
  83: VirtualKey.s,
  84: VirtualKey.t,
  85: VirtualKey.u,
  86: VirtualKey.v,
  87: VirtualKey.w,
  88: VirtualKey.x,
  89: VirtualKey.y,
  90: VirtualKey.z,

  // Lower case
  97: VirtualKey.a,
  98: VirtualKey.b,
  99: VirtualKey.c,
  100: VirtualKey.d,
  101: VirtualKey.e,
  102: VirtualKey.f,
  103: VirtualKey.g,
  104: VirtualKey.h,
  105: VirtualKey.i,
  106: VirtualKey.j,
  107: VirtualKey.k,
  108: VirtualKey.l,
  109: VirtualKey.m,
  110: VirtualKey.n,
  111: VirtualKey.o,
  112: VirtualKey.p,
  113: VirtualKey.q,
  114: VirtualKey.r,
  115: VirtualKey.s,
  116: VirtualKey.t,
  117: VirtualKey.u,
  118: VirtualKey.v,
  119: VirtualKey.w,
  120: VirtualKey.x,
  121: VirtualKey.y,
  122: VirtualKey.z,

  // Other
  124: VirtualKey.separator,
};
