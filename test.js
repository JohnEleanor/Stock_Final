
var th = {
    menu_navbar: "เมนู",
    menu_home: "หน้าแรก",
    menu_about: "เกี่ยวกับ",
    menu_contact: "ติดต่อ",
    txt_hello: "สวัสดีวันจันทร์",
    btn_language: "ภาษา : ไทย"
  };
  var en = {
    menu_navbar: "Navbar",
    menu_home: "Home",
    menu_about: "About",
    menu_contact: "Contact",
    txt_hello: "Hello world",
    btn_language: "Language : EN"
  };
  
  function renderlang() {
    if (!localStorage.lang) {
      localStorage.setItem("lang", "en");
    } else {
      $("#menu_navbar").text(settext("menu_navbar"));
      $("#menu_home").text(settext("menu_home"));
      $("#menu_about").text(settext("menu_about"));
      $("#menu_contact").text(settext("menu_contact"));
      $("#txt_hello").text(settext("txt_hello"));
      $("#btn_language").text(settext("btn_language"));
    }
  }
  
  function settext(key) {
    if (localStorage.lang == "en") {
      return en[key];
    } else {
      return th[key];
    }
  }
  
  function togglelang() {
    if (localStorage.lang == "en") localStorage.setItem("lang", "th");
    else if (localStorage.lang == "th") localStorage.setItem("lang", "en");
  
    renderlang();
    return "now language: " + localStorage.lang;
  }
  
  renderlang()
  