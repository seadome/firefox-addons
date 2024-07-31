{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "a11ycss" = buildFirefoxXpiAddon {
      pname = "a11ycss";
      version = "2.0.1";
      addonId = "a11y.css@ffoodd";
      url = "https://addons.mozilla.org/firefox/downloads/file/4156875/a11ycss-2.0.1.xpi";
      sha256 = "49d52c589266604c232c29a915b3d06df231267b2dca7d7694284a25059b5c51";
      meta = with lib;
      {
        homepage = "https://ffoodd.github.io/a11y.css/";
        description = "a11y.css provides warnings about possible risks and mistakes that exist in HTML code through a style sheet. This extension also provides several accessibility-related utilities.\n\nsee <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4c643171ccddfcfa3712d45a2b7b615f54195eb4507868ab6ef3fbf6694dc4c2/https%3A//github.com/ffoodd/a11y.css/tree/webextension\" rel=\"nofollow\">https://github.com/ffoodd/a11y.css/tree/webextension</a> for  details";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" "scripting" "tabs" "*://*/*" ];
        platforms = platforms.all;
      };
    };
    "anchors-reveal" = buildFirefoxXpiAddon {
      pname = "anchors-reveal";
      version = "1.2resigned1";
      addonId = "jid1-XX0TcCGBa7GVGw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4270578/anchors_reveal-1.2resigned1.xpi";
      sha256 = "bcae97368b2c2271cf694676a2fb29dd168698e6e8105a6df6607fcf0bbce77a";
      meta = with lib;
      {
        homepage = "http://dascritch.net/post/2014/06/24/Sniffeur-d-ancre";
        description = "Reveal the anchors in a webpage";
        license = licenses.gpl3;
        mozPermissions = [ "activeTab" "storage" "contextMenus" ];
        platforms = platforms.all;
      };
    };
    "auto-tab-discard" = buildFirefoxXpiAddon {
      pname = "auto-tab-discard";
      version = "0.6.7";
      addonId = "{c2c003ee-bd69-42a2-b0e9-6f34222cb046}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4045009/auto_tab_discard-0.6.7.xpi";
      sha256 = "89e59b8603c444258c89a507d7126be52ad7a35e4f7b8cfbca039b746f70b5d5";
      meta = with lib;
      {
        homepage = "https://webextension.org/listing/tab-discard.html";
        description = "Increase browser speed and reduce memory load and when you have numerous open tabs.";
        license = licenses.mpl20;
        mozPermissions = [
          "idle"
          "storage"
          "contextMenus"
          "notifications"
          "alarms"
          "*://*/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "bitwarden" = buildFirefoxXpiAddon {
      pname = "bitwarden";
      version = "2024.7.1";
      addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326285/bitwarden_password_manager-2024.7.1.xpi";
      sha256 = "28c505df3b615f6a3c829afdcff74584ddc5eb1d3fb35f9848c18470fad93772";
      meta = with lib;
      {
        homepage = "https://bitwarden.com";
        description = "At home, at work, or on the go, Bitwarden easily secures all your passwords, passkeys, and sensitive information.";
        license = licenses.gpl3;
        mozPermissions = [
          "<all_urls>"
          "*://*/*"
          "tabs"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "clipboardRead"
          "clipboardWrite"
          "idle"
          "alarms"
          "webRequest"
          "webRequestBlocking"
          "webNavigation"
          "file:///*"
          "https://lastpass.com/export.php"
        ];
        platforms = platforms.all;
      };
    };
    "consent-o-matic" = buildFirefoxXpiAddon {
      pname = "consent-o-matic";
      version = "1.1.0";
      addonId = "gdpr@cavi.au.dk";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298698/consent_o_matic-1.1.0.xpi";
      sha256 = "c23631cdf746fcf2896e99ba0dbc6192bd92c24275d05b0802dc7d7038b4815a";
      meta = with lib;
      {
        homepage = "https://consentomatic.au.dk/";
        description = "Automatic handling of GDPR consent forms";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "tabs" "storage" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "copy-as-org-mode" = buildFirefoxXpiAddon {
      pname = "copy-as-org-mode";
      version = "0.2.0";
      addonId = "{59e590fc-6635-45fe-89c7-af637eb4b9c0}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3939068/copy_as_org_mode-0.2.0.xpi";
      sha256 = "dcd02dbd1a753928b82e772055a0532421f94bb40ae23b0606e6e91117909cce";
      meta = with lib;
      {
        homepage = "https://github.com/kuanyui/copy-as-org-mode";
        description = "Copy selection or link of current page as Org-mode format text!";
        license = licenses.mpl20;
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "menus"
          "storage"
          "notifications"
        ];
        platforms = platforms.all;
      };
    };
    "copy-selection-as-markdown" = buildFirefoxXpiAddon {
      pname = "copy-selection-as-markdown";
      version = "0.22.0";
      addonId = "{db9a72da-7bc5-4805-bcea-da3cb1a15316}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4250904/copy_selection_as_markdown-0.22.0.xpi";
      sha256 = "5d76d73b93762b2a42781cc564de20e982387b428664e96bda50b3066db9ac08";
      meta = with lib;
      {
        homepage = "https://github.com/0x6b/copy-selection-as-markdown";
        description = "Copy title, URL, and selection as Markdown.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "clipboardWrite"
          "contextMenus"
          "storage"
        ];
        platforms = platforms.all;
      };
    };
    "darkreader" = buildFirefoxXpiAddon {
      pname = "darkreader";
      version = "4.9.88";
      addonId = "addon@darkreader.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4317971/darkreader-4.9.88.xpi";
      sha256 = "7a965d5880be9fbf8be81a106acd1968263b1acc2db0add580b30f2dd71954b3";
      meta = with lib;
      {
        homepage = "https://darkreader.org/";
        description = "Dark mode for every website. Take care of your eyes, use dark theme for night and daily browsing.";
        license = licenses.mit;
        mozPermissions = [
          "alarms"
          "contextMenus"
          "storage"
          "tabs"
          "theme"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "firefox-color" = buildFirefoxXpiAddon {
      pname = "firefox-color";
      version = "2.1.7";
      addonId = "FirefoxColor@mozilla.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3643624/firefox_color-2.1.7.xpi";
      sha256 = "b7fb07b6788f7233dd6223e780e189b4c7b956c25c40493c28d7020493249292";
      meta = with lib;
      {
        homepage = "https://color.firefox.com";
        description = "Build, save and share beautiful Firefox themes.";
        license = licenses.mpl20;
        mozPermissions = [
          "theme"
          "storage"
          "tabs"
          "https://color.firefox.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "gnome-shell-integration" = buildFirefoxXpiAddon {
      pname = "gnome-shell-integration";
      version = "12";
      addonId = "chrome-gnome-shell@gnome.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4300298/gnome_shell_integration-12.xpi";
      sha256 = "4c30f53dc1a29ae624e37c433f84df9d1ce64e6f4d996567f580fc88ee535e2c";
      meta = with lib;
      {
        homepage = "https://gnome.pages.gitlab.gnome.org/gnome-browser-integration/pages/gnome-browser-integration.html";
        description = "This extension provides integration with GNOME Shell and the corresponding extensions repository <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/b16ff805576d83628b80265636b483e6f56c58d6e812e04045626ff602eff739/https%3A//extensions.gnome.org\" rel=\"nofollow\">https://extensions.gnome.org</a>";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "nativeMessaging"
          "notifications"
          "storage"
          "tabs"
          "https://extensions.gnome.org/*"
          "https://extensions-next.gnome.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "gopass-bridge" = buildFirefoxXpiAddon {
      pname = "gopass-bridge";
      version = "0.9.0";
      addonId = "{eec37db0-22ad-4bf1-9068-5ae08df8c7e9}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3933988/gopass_bridge-0.9.0.xpi";
      sha256 = "3ef72f32eabc9092591076a2093b3341cb1a9e6c57631655a97c7bcecab80420";
      meta = with lib;
      {
        homepage = "https://github.com/gopasspw/gopassbridge";
        description = "Gopass Bridge allows searching and inserting login credentials from the gopass password manager ( <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fa484fa7cde64c1be04f689a80902fdf34bfe274b8675213f619c3a13e6606ab/https%3A//www.gopass.pw/\">https://www.gopass.pw/</a> ).";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "clipboardWrite"
          "storage"
          "nativeMessaging"
          "notifications"
          "webRequest"
          "webRequestBlocking"
          "http://*/*"
          "https://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "headingsmap" = buildFirefoxXpiAddon {
      pname = "headingsmap";
      version = "4.8.4";
      addonId = "headings@niquelheadings.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4245767/headingsmap-4.8.4.xpi";
      sha256 = "03b8e1ae09ae4479b13a66d58b3d5bb45ba3511d700244709dc72cb96c9e3a94";
      meta = with lib;
      {
        description = "The extension generates a document-map or index of any web document structured with headings and/or with sections in HTML 5. It shows the headings structure, the errors in the structure (ie. incorrect levels), and it works as HTML5 Outliner too.";
        mozPermissions = [ "<all_urls>" "activeTab" "storage" "webNavigation" ];
        platforms = platforms.all;
      };
    };
    "js-search-extension" = buildFirefoxXpiAddon {
      pname = "js-search-extension";
      version = "0.1";
      addonId = "{479ec4ee-fd16-4f95-b172-dd39fbd921ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3718212/js_search_extension-0.1.xpi";
      sha256 = "07d68e168d7137434cf5096efed581daa836a31096b0ca3f39a76a58e08b3ff5";
      meta = with lib;
      {
        homepage = "https://js.extension.sh";
        description = "The ultimate search extension for Javascript!";
        mozPermissions = [ "tabs" ];
        platforms = platforms.all;
      };
    };
    "kagi-search" = buildFirefoxXpiAddon {
      pname = "kagi-search";
      version = "0.7.1";
      addonId = "search@kagi.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4307128/kagi_search_for_firefox-0.7.1.xpi";
      sha256 = "78c28702ebe56d920a64010f413540880065c45eae2ee58823941d7e1fd49059";
      meta = with lib;
      {
        homepage = "https://kagi.com";
        description = "A simple helper extension for setting Kagi as a default search engine, and automatically logging in to Kagi in private browsing windows.";
        license = licenses.mit;
        mozPermissions = [
          "cookies"
          "declarativeNetRequestWithHostAccess"
          "webRequest"
          "storage"
          "contextMenus"
        ];
        platforms = platforms.all;
      };
    };
    "laboratory-by-mozilla" = buildFirefoxXpiAddon {
      pname = "laboratory-by-mozilla";
      version = "3.0.8";
      addonId = "1b2383b324c8520974ee097e46301d5ca4e076de387c02886f1c6b1503671586@pokeinthe.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3716439/laboratory_by_mozilla-3.0.8.xpi";
      sha256 = "b75b09012587686df87afef671bf9f0e27a9812e94781d425032a36f38a5aba2";
      meta = with lib;
      {
        homepage = "https://github.com/april/laboratory";
        description = "Because good website security shouldn't only be available to mad scientists! Laboratory is a WebExtension that helps you generate a Content Security Policy (CSP) header for your website.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "ftp://*/*"
          "http://*/*"
          "https://*/*"
          "ws://*/*"
          "wss://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "libredirect" = buildFirefoxXpiAddon {
      pname = "libredirect";
      version = "2.8.5";
      addonId = "7esoorv3@alefvanoon.anonaddy.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4320954/libredirect-2.8.5.xpi";
      sha256 = "b0e07ae1480c9087c22a560d0601bee28cf79dda3083fc6757a9d2b56b58fa76";
      meta = with lib;
      {
        homepage = "https://libredirect.github.io";
        description = "Redirects YouTube, Twitter, TikTok... requests to alternative privacy friendly frontends.";
        license = licenses.gpl3;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "storage"
          "clipboardWrite"
          "contextMenus"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "link-cleaner" = buildFirefoxXpiAddon {
      pname = "link-cleaner";
      version = "1.6resigned1";
      addonId = "{6d85dea2-0fb4-4de3-9f8c-264bce9a2296}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272011/link_cleaner-1.6resigned1.xpi";
      sha256 = "16dbaf948c31ed586e64301d5809d7b11dd07014bf5edb5f7b1b4bfa30d40ff0";
      meta = with lib;
      {
        homepage = "https://github.com/idlewan/link_cleaner";
        description = "Clean URLs that are about to be visited:\n- removes utm_* parameters\n- on item pages of aliexpress and amazon, removes tracking parameters\n- skip redirect pages of facebook, steam and reddit";
        license = licenses.gpl3;
        mozPermissions = [ "<all_urls>" "webRequest" "webRequestBlocking" ];
        platforms = platforms.all;
      };
    };
    "linkhints" = buildFirefoxXpiAddon {
      pname = "linkhints";
      version = "1.3.1";
      addonId = "linkhints@lydell.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3985677/linkhints-1.3.1.xpi";
      sha256 = "ca0d9ed8d52e3ab62a9d3d7c2be29ae30d22f2ecd37eff5b38e34c130d96711b";
      meta = with lib;
      {
        homepage = "https://lydell.github.io/LinkHints";
        description = "Click with your keyboard.";
        license = licenses.mit;
        mozPermissions = [ "<all_urls>" "storage" ];
        platforms = platforms.all;
      };
    };
    "multi-account-containers" = buildFirefoxXpiAddon {
      pname = "multi-account-containers";
      version = "8.1.3";
      addonId = "@testpilot-containers";
      url = "https://addons.mozilla.org/firefox/downloads/file/4186050/multi_account_containers-8.1.3.xpi";
      sha256 = "33edd98d0fc7d47fa310f214f897ce4dfe268b0f868c9d7f32b4ca50573df85c";
      meta = with lib;
      {
        homepage = "https://github.com/mozilla/multi-account-containers/#readme";
        description = "Firefox Multi-Account Containers lets you keep parts of your online life separated into color-coded tabs. Cookies are separated by container, allowing you to use the web with multiple accounts and integrate Mozilla VPN for an extra layer of privacy.";
        license = licenses.mpl20;
        mozPermissions = [
          "<all_urls>"
          "activeTab"
          "cookies"
          "contextMenus"
          "contextualIdentities"
          "history"
          "idle"
          "management"
          "storage"
          "unlimitedStorage"
          "tabs"
          "webRequestBlocking"
          "webRequest"
        ];
        platforms = platforms.all;
      };
    };
    "octolinker" = buildFirefoxXpiAddon {
      pname = "octolinker";
      version = "6.10.5";
      addonId = "octolinker@stefanbuck.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4029754/octolinker-6.10.5.xpi";
      sha256 = "36a953c5bd3a60648a45ec04fb131664f54f2d31caf26853c2b3d438d50674c1";
      meta = with lib;
      {
        homepage = "https://octolinker.vercel.app";
        description = "It turns language-specific module-loading statements like include, require or import into links. Depending on the language it will either redirect you to the referenced file or to an external website like a manual page or another service.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "https://github.com/"
          "https://api.github.com/"
          "https://gist.github.com/"
          "https://octolinker-api.now.sh/"
          "https://github.com/*"
          "https://gist.github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "offline-qr-code-generator" = buildFirefoxXpiAddon {
      pname = "offline-qr-code-generator";
      version = "1.8";
      addonId = "offline-qr-code@rugk.github.io";
      url = "https://addons.mozilla.org/firefox/downloads/file/3870992/offline_qr_code_generator-1.8.xpi";
      sha256 = "449c236b88cf3fea2da31bdc004fdf6379face841b77ccc5096cba3afbd983de";
      meta = with lib;
      {
        homepage = "https://github.com/rugk/offline-qr-code";
        description = "This add-on allows you to quickly generate a QR code offline with the URL of the open tab or any (selected) other text! 👍\n\nIt works completely offline protecting your privacy and has a big range of features like colored QR codes!";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" "menus" ];
        platforms = platforms.all;
      };
    };
    "old-reddit-redirect" = buildFirefoxXpiAddon {
      pname = "old-reddit-redirect";
      version = "1.8.1";
      addonId = "{9063c2e9-e07c-4c2c-9646-cfe7ca8d0498}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4182157/old_reddit_redirect-1.8.1.xpi";
      sha256 = "bd411715bb36bd535a0211a47bd69c73abefac6153164f7e00f5b57971397700";
      meta = with lib;
      {
        homepage = "https://github.com/tom-james-watson/old-reddit-redirect";
        description = "Ensure Reddit always loads the old design";
        license = licenses.mit;
        mozPermissions = [
          "webRequest"
          "webRequestBlocking"
          "*://reddit.com/*"
          "*://www.reddit.com/*"
          "*://np.reddit.com/*"
          "*://amp.reddit.com/*"
          "*://i.reddit.com/*"
          "*://i.redd.it/*"
          "*://preview.redd.it/*"
          "*://old.reddit.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "onepassword-password-manager" = buildFirefoxXpiAddon {
      pname = "onepassword-password-manager";
      version = "2.26.1";
      addonId = "{d634138d-c276-4fc8-924b-40a0ea21d284}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4321525/1password_x_password_manager-2.26.1.xpi";
      sha256 = "d838bfb835e6c1004d99e9192b2e7243646669915400f3fa782ae03ef0765946";
      meta = with lib;
      {
        homepage = "https://1password.com";
        description = "The best way to experience 1Password in your browser. Easily sign in to sites, generate passwords, and store secure information, including logins, credit cards, notes, and more.";
        license = {
          shortName = "1pwd";
          fullName = "Service Agreement for 1Password users and customers";
          url = "https://1password.com/legal/terms-of-service/";
          free = false;
        };
        mozPermissions = [
          "<all_urls>"
          "alarms"
          "clipboardWrite"
          "contextMenus"
          "downloads"
          "idle"
          "management"
          "nativeMessaging"
          "notifications"
          "privacy"
          "scripting"
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "https://*.1password.ca/*"
          "https://*.1password.com/*"
          "https://*.1password.eu/*"
          "https://*.b5dev.ca/*"
          "https://*.b5dev.com/*"
          "https://*.b5dev.eu/*"
          "https://*.b5local.com/*"
          "https://*.b5staging.com/*"
          "https://*.b5test.ca/*"
          "https://*.b5test.com/*"
          "https://*.b5test.eu/*"
          "https://*.b5rev.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "org-capture" = buildFirefoxXpiAddon {
      pname = "org-capture";
      version = "0.2.2resigned1";
      addonId = "{ddefd400-12ea-4264-8166-481f23abaa87}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4272196/org_capture-0.2.2resigned1.xpi";
      sha256 = "eac6fdbfb90ff92862228acb7e8d265f1326ddcc4b86f87455d74ae448a22f45";
      meta = with lib;
      {
        homepage = "https://github.com/sprig/org-capture-extension";
        description = "A helper for capturing things via org-protocol in emacs: First, set up: <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/04ad17418f8d35ee0f3edf4599aed951b2a5ef88d4bc7e0e3237f6d86135e4fb/http%3A//orgmode.org/worg/org-contrib/org-protocol.html\">http://orgmode.org/worg/org-contrib/org-protocol.html</a> or <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fb401af8127ccf82bc948b0a7af0543eec48d58100c0c46404f81aabeda442e6/https%3A//github.com/sprig/org-capture-extension\">https://github.com/sprig/org-capture-extension</a>\n\nSee <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/6aad51cc4e2f9476f9fff344e6554eade08347181aed05f8b61cda05073daecb/https%3A//youtu.be/zKDHto-4wsU\">https://youtu.be/zKDHto-4wsU</a> for example usage";
        license = licenses.mit;
        mozPermissions = [ "activeTab" "storage" ];
        platforms = platforms.all;
      };
    };
    "passff" = buildFirefoxXpiAddon {
      pname = "passff";
      version = "1.19.5";
      addonId = "passff@invicem.pro";
      url = "https://addons.mozilla.org/firefox/downloads/file/4303400/passff-1.19.5.xpi";
      sha256 = "03331d671c759b8689726aca7146cc2e2d9a4118d2d00e184dda20d1176e79e7";
      meta = with lib;
      {
        homepage = "https://codeberg.org/PassFF/passff";
        description = "Add-on that allows users of the unix password manager 'pass' (see <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/24f646fb865abe6edf9e3f626db62565bfdc2e7819ab33a5b4c30a9573787988/https%3A//www.passwordstore.org/\" rel=\"nofollow\">https://www.passwordstore.org/</a>) to access their password store from Firefox";
        license = licenses.gpl2;
        mozPermissions = [
          "<all_urls>"
          "clipboardWrite"
          "contextMenus"
          "contextualIdentities"
          "nativeMessaging"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "plasma-integration" = buildFirefoxXpiAddon {
      pname = "plasma-integration";
      version = "1.9.1";
      addonId = "plasma-browser-integration@kde.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298512/plasma_integration-1.9.1.xpi";
      sha256 = "394a3525185679dd5430d05f980ab6be19d96557560fe86208c21a8807669b33";
      meta = with lib;
      {
        homepage = "http://kde.org";
        description = "Multitask efficiently by controlling browser functions from the Plasma desktop.";
        license = licenses.gpl3;
        mozPermissions = [
          "nativeMessaging"
          "notifications"
          "storage"
          "downloads"
          "tabs"
          "<all_urls>"
          "contextMenus"
          "*://*/*"
        ];
        platforms = platforms.all;
      };
    };
    "proton-pass" = buildFirefoxXpiAddon {
      pname = "proton-pass";
      version = "1.20.0";
      addonId = "78272b6fa58f4a1abaac99321d503a20@proton.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4314861/proton_pass-1.20.0.xpi";
      sha256 = "068f81a53467f7298e429a1f14c20163083b60aaebe0a08ee14d4829ae8618f3";
      meta = with lib;
      {
        homepage = "https://proton.me";
        description = "Free and unlimited password manager to keep your login credentials safe and manage them directly in your browser.";
        license = licenses.gpl3Plus;
        mozPermissions = [
          "activeTab"
          "alarms"
          "scripting"
          "storage"
          "unlimitedStorage"
          "webRequest"
          "webRequestBlocking"
          "https://*/*"
          "http://*/*"
          "https://account.proton.me/*"
          "https://pass.proton.me/*"
        ];
        platforms = platforms.all;
      };
    };
    "raindropio" = buildFirefoxXpiAddon {
      pname = "raindropio";
      version = "6.6.24";
      addonId = "jid0-adyhmvsP91nUO8pRv0Mn2VKeB84@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4269679/raindropio-6.6.24.xpi";
      sha256 = "4c86f5e78e06e7b5978c1f20ce1be659a871556188ef4669b9a2aa826bab660f";
      meta = with lib;
      {
        homepage = "https://raindrop.io";
        description = "All-in-one bookmark manager";
        license = licenses.mpl20;
        mozPermissions = [ "contextMenus" "activeTab" "scripting" "storage" ];
        platforms = platforms.all;
      };
    };
    "react-devtools" = buildFirefoxXpiAddon {
      pname = "react-devtools";
      version = "5.3.1";
      addonId = "@react-devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/4314064/react_devtools-5.3.1.xpi";
      sha256 = "376f33d9b1219341eb8be16578b406b3f371c11aace55f68fcad4847e818f076";
      meta = with lib;
      {
        homepage = "https://github.com/facebook/react";
        description = "React Developer Tools is a tool that allows you to inspect a React tree, including the component hierarchy, props, state, and more. To get started, just open the Firefox devtools and switch to the \"⚛️ Components\" or \"⚛️ Profiler\" tab.";
        license = licenses.mit;
        mozPermissions = [
          "file:///*"
          "http://*/*"
          "https://*/*"
          "clipboardWrite"
          "scripting"
          "devtools"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "reddit-enhancement-suite" = buildFirefoxXpiAddon {
      pname = "reddit-enhancement-suite";
      version = "5.24.6";
      addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4282309/reddit_enhancement_suite-5.24.6.xpi";
      sha256 = "8065fa2d119e6f6bde2a0d7d2e1696e45709a1583de63bb700eeaa31876f146a";
      meta = with lib;
      {
        homepage = "https://redditenhancementsuite.com/";
        description = "Reddit Enhancement Suite (RES) is a suite of tools to enhance your Reddit browsing experience.";
        license = licenses.gpl3;
        mozPermissions = [
          "https://*.reddit.com/*"
          "cookies"
          "identity"
          "tabs"
          "history"
          "storage"
          "scripting"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "reduxdevtools" = buildFirefoxXpiAddon {
      pname = "reduxdevtools";
      version = "3.1.6";
      addonId = "extension@redux.devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/4209147/reduxdevtools-3.1.6.xpi";
      sha256 = "2149809b62c5524b241e89204ef271c665b9da46ceeaa0fd93132ed338aaaa26";
      meta = with lib;
      {
        homepage = "https://github.com/reduxjs/redux-devtools";
        description = "DevTools for Redux with actions history, undo and replay.";
        license = licenses.mit;
        mozPermissions = [
          "notifications"
          "contextMenus"
          "tabs"
          "storage"
          "file:///*"
          "http://*/*"
          "https://*/*"
          "devtools"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "refined-github" = buildFirefoxXpiAddon {
      pname = "refined-github";
      version = "24.7.30";
      addonId = "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4328593/refined_github-24.7.30.xpi";
      sha256 = "7cf73aa9da978f301cc57241c851cfeff884e009c301662d0f6424cda6e8c2dd";
      meta = with lib;
      {
        homepage = "https://github.com/refined-github/refined-github";
        description = "Simplifies the GitHub interface and adds many useful features.";
        license = licenses.mit;
        mozPermissions = [
          "storage"
          "scripting"
          "contextMenus"
          "activeTab"
          "alarms"
          "https://github.com/*"
          "https://api.github.com/*"
          "https://gist.github.com/*"
        ];
        platforms = platforms.all;
      };
    };
    "rust-search-extension" = buildFirefoxXpiAddon {
      pname = "rust-search-extension";
      version = "1.13.0";
      addonId = "{04188724-64d3-497b-a4fd-7caffe6eab29}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4236369/rust_search_extension-1.13.0.xpi";
      sha256 = "59ddefdab6cd7dbe5fb368fe6fac2eace052060bf9357dd39bc9c7ff3439be13";
      meta = with lib;
      {
        homepage = "https://rust.extension.sh";
        description = "The ultimate search extension for Rust\n\nSearch std docs, crates, builtin attributes, official books, and error codes, etc in your address bar instantly.\n<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4af48e3229ba03b454fb9b352a7e5a4c038e1bcc6721bf744b781a5e96b9e798/https%3A//rust.extension.sh\" rel=\"nofollow\">https://rust.extension.sh</a>";
        license = licenses.mpl20;
        mozPermissions = [
          "*://crates.io/api/v1/crates/*"
          "https://rust.extension.sh/*"
          "storage"
          "unlimitedStorage"
          "*://docs.rs/*"
          "*://doc.rust-lang.org/*"
          "*://doc.rust-lang.org/nightly/nightly-rustc/*"
          "*://rust.extension.sh/update"
        ];
        platforms = platforms.all;
      };
    };
    "saml-tracer" = buildFirefoxXpiAddon {
      pname = "saml-tracer";
      version = "1.7.1";
      addonId = "{d3e01ff2-9a3a-4007-8f6e-7acd9a5de263}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3884953/saml_tracer-1.7.1.xpi";
      sha256 = "8fa02c1b4e55f9d4b2fd3cd038403861ba850f9e6b194bd18ab3a38430f286a0";
      meta = with lib;
      {
        homepage = "https://github.com/SimpleSAMLphp/SAML-tracer/";
        description = "A tool for viewing SAML and WS-Federation messages sent through the browser during single sign-on and single logout.";
        license = licenses.bsd2;
        mozPermissions = [ "webRequest" "webRequestBlocking" "<all_urls>" ];
        platforms = platforms.all;
      };
    };
    "simple-tab-groups" = buildFirefoxXpiAddon {
      pname = "simple-tab-groups";
      version = "5.2";
      addonId = "simple-tab-groups@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4103800/simple_tab_groups-5.2.xpi";
      sha256 = "b56f30cea753a9c4d1c0e078c0e5e635f1885ea7e40305cee59b9e145fad0a6c";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Create, modify, and quickly change tab groups";
        license = licenses.mpl20;
        mozPermissions = [
          "tabs"
          "tabHide"
          "notifications"
          "menus"
          "contextualIdentities"
          "cookies"
          "sessions"
          "downloads"
          "management"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "storage"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "single-file" = buildFirefoxXpiAddon {
      pname = "single-file";
      version = "1.22.54";
      addonId = "{531906d3-e22f-4a6c-a102-8057b88a1a63}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4324972/single_file-1.22.54.xpi";
      sha256 = "b5c565f9754e5e45d6649cca851d3dec19e69a0eac39877160e49d3f6c354f4f";
      meta = with lib;
      {
        homepage = "https://github.com/gildas-lormeau/SingleFile";
        description = "Save an entire web page—including images and styling—as a single HTML file.";
        license = licenses.agpl3Plus;
        mozPermissions = [
          "identity"
          "menus"
          "downloads"
          "storage"
          "tabs"
          "<all_urls>"
          "devtools"
        ];
        platforms = platforms.all;
      };
    };
    "sourcegraph" = buildFirefoxXpiAddon {
      pname = "sourcegraph";
      version = "23.4.14.1343";
      addonId = "sourcegraph-for-firefox@sourcegraph.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/4097469/sourcegraph_for_firefox-23.4.14.1343.xpi";
      sha256 = "fa02236d75a82a7c47dabd0272b77dd9a74e8069563415a7b8b2b9d37c36d20b";
      meta = with lib;
      {
        description = "Adds code intelligence to GitHub, GitLab, Bitbucket Server, and Phabricator: hovers, definitions, references. Supports 20+ languages.";
        mozPermissions = [
          "activeTab"
          "storage"
          "contextMenus"
          "https://github.com/*"
          "https://sourcegraph.com/*"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "steam-database" = buildFirefoxXpiAddon {
      pname = "steam-database";
      version = "4.5";
      addonId = "firefox-extension@steamdb.info";
      url = "https://addons.mozilla.org/firefox/downloads/file/4326369/steam_database-4.5.xpi";
      sha256 = "f4dff61843f35adfc2cf8e353e25a6a8e37836b770b4d1a35f48114f1cd21328";
      meta = with lib;
      {
        homepage = "https://steamdb.info/";
        description = "Adds SteamDB links and new features on the Steam store and community. View lowest game prices and stats.";
        license = licenses.bsd3;
        mozPermissions = [
          "storage"
          "https://steamdb.info/*"
          "https://store.steampowered.com/*"
          "https://store.steampowered.com/app/*"
          "https://store.steampowered.com/news/app/*"
          "https://store.steampowered.com/account/licenses*"
          "https://store.steampowered.com/account/registerkey*"
          "https://store.steampowered.com/sub/*"
          "https://store.steampowered.com/bundle/*"
          "https://store.steampowered.com/widget/*"
          "https://store.steampowered.com/app/*/agecheck"
          "https://store.steampowered.com/agecheck/*"
          "https://store.steampowered.com/explore*"
          "https://steamcommunity.com/app/*"
          "https://steamcommunity.com/sharedfiles/filedetails*"
          "https://steamcommunity.com/workshop/filedetails*"
          "https://steamcommunity.com/workshop/browse*"
          "https://steamcommunity.com/workshop/discussions*"
          "https://steamcommunity.com/*"
          "https://steamcommunity.com/id/*"
          "https://steamcommunity.com/profiles/*"
          "https://steamcommunity.com/id/*/inventory*"
          "https://steamcommunity.com/profiles/*/inventory*"
          "https://steamcommunity.com/id/*/stats*"
          "https://steamcommunity.com/profiles/*/stats*"
          "https://steamcommunity.com/stats/*/achievements*"
          "https://steamcommunity.com/tradeoffer/*"
          "https://steamcommunity.com/id/*/recommended/*"
          "https://steamcommunity.com/profiles/*/recommended/*"
          "https://steamcommunity.com/id/*/badges*"
          "https://steamcommunity.com/profiles/*/badges*"
          "https://steamcommunity.com/id/*/gamecards/*"
          "https://steamcommunity.com/profiles/*/gamecards/*"
          "https://steamcommunity.com/market/multibuy*"
          "https://steamcommunity.com/games/*"
          "https://steamcommunity.com/sharedfiles/*"
          "https://steamcommunity.com/workshop/*"
          "https://steamcommunity.com/market/*"
        ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-create-new-group" = buildFirefoxXpiAddon {
      pname = "stg-plugin-create-new-group";
      version = "2.1";
      addonId = "stg-plugin-create-new-group@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4093910/stg_plugin_create_new_group-2.1.xpi";
      sha256 = "a138715c58e482a54c9c54123a60c9a66c33ab199a813be3980974cacb510eb2";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Create new group in extention Simple Tab Groups";
        license = licenses.mpl20;
        mozPermissions = [ "notifications" ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-create-new-tab" = buildFirefoxXpiAddon {
      pname = "stg-plugin-create-new-tab";
      version = "3.1";
      addonId = "stg-plugin-create-new-tab@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4094638/stg_plugin_create_new_tab-3.1.xpi";
      sha256 = "3c1c26d733d4c828546d4cdad04fdf5930cb919c2e1befac01996f160a15e5fd";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Create new tab (can do it in temporary container) in Simple Tab Groups extention";
        license = licenses.mpl20;
        mozPermissions = [ "notifications" "cookies" ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-create-temp-tab" = buildFirefoxXpiAddon {
      pname = "stg-plugin-create-temp-tab";
      version = "2.0";
      addonId = "stg-plugin-create-temp-tab@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4093915/stg_plugin_create_temp_tab-2.0.xpi";
      sha256 = "91677d7263303f87095599ca724d81b474e74d8074d1b40a09f34e522f2ca35c";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Create a new tab in the container in the Simple Tab Groups v4.5.2+ extension";
        license = licenses.mpl20;
        mozPermissions = [ "notifications" ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-del-current-group" = buildFirefoxXpiAddon {
      pname = "stg-plugin-del-current-group";
      version = "2.0";
      addonId = "stg-plugin-del-current-group@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4093917/stg_plugin_del_current_group-2.0.xpi";
      sha256 = "81f23b12fa12edfb93f76682fccd6e183ebbf3c38b63b956cb9db7d787be5e52";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Delete current group in Simple Tab Groups extention";
        license = licenses.mpl20;
        mozPermissions = [ "notifications" ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-group-notes" = buildFirefoxXpiAddon {
      pname = "stg-plugin-group-notes";
      version = "2.0.1";
      addonId = "stg-plugin-group-notes@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4094713/stg_plugin_group_notes-2.0.1.xpi";
      sha256 = "8d831263db5e43e7d1fca20ddbd661dfeb319e806f54bc44fbe07c746d5d5814";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Create notes for group";
        license = licenses.mpl20;
        mozPermissions = [
          "menus"
          "notifications"
          "storage"
          "unlimitedStorage"
        ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-load-custom-group" = buildFirefoxXpiAddon {
      pname = "stg-plugin-load-custom-group";
      version = "2.0";
      addonId = "stg-plugin-load-custom-group@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4093922/stg_plugin_load_custom_group-2.0.xpi";
      sha256 = "1840147e21656d1f0ed6a0a5c420574579cc59bd99df9bd930a62962cd86d6f8";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Load custom group in Simple Tab Groups extention";
        license = licenses.mpl20;
        mozPermissions = [ "notifications" "menus" "storage" ];
        platforms = platforms.all;
      };
    };
    "stg-plugin-manage-groups" = buildFirefoxXpiAddon {
      pname = "stg-plugin-manage-groups";
      version = "2.0";
      addonId = "stg-plugin-manage-groups@drive4ik";
      url = "https://addons.mozilla.org/firefox/downloads/file/4093919/stg_plugin_manage_groups-2.0.xpi";
      sha256 = "337e51bec34ec584b408e148c1b193dff93b74d4d50d0a6b88b62acfbfc5d540";
      meta = with lib;
      {
        homepage = "https://github.com/drive4ik/simple-tab-groups";
        description = "Open Manage groups page in Simple Tab Groups extention";
        license = licenses.mpl20;
        mozPermissions = [ "notifications" ];
        platforms = platforms.all;
      };
    };
    "stylus" = buildFirefoxXpiAddon {
      pname = "stylus";
      version = "1.5.48";
      addonId = "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4312995/styl_us-1.5.48.xpi";
      sha256 = "c41434ff62124d16a8eb4e29876f2fb1850a6003957fb679b4f16e76621e9151";
      meta = with lib;
      {
        homepage = "https://add0n.com/stylus.html";
        description = "Redesign your favorite websites with Stylus, an actively developed and community driven userstyles manager. Easily install custom themes from popular online repositories, or create, edit, and manage your own personalized CSS stylesheets.";
        license = licenses.gpl3Plus;
        mozPermissions = [
          "tabs"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "contextMenus"
          "storage"
          "unlimitedStorage"
          "alarms"
          "<all_urls>"
          "http://userstyles.org/*"
          "https://userstyles.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "tab-session-manager" = buildFirefoxXpiAddon {
      pname = "tab-session-manager";
      version = "7.0.1";
      addonId = "Tab-Session-Manager@sienori";
      url = "https://addons.mozilla.org/firefox/downloads/file/4298614/tab_session_manager-7.0.1.xpi";
      sha256 = "936499a7cf42fabb26a283125cc5ec8c0615407722f3c7e9fb9f6d3ee5916890";
      meta = with lib;
      {
        homepage = "https://tab-session-manager.sienori.com/";
        description = "Save and restore the state of windows and tabs. It also supports automatic saving and cloud sync.";
        license = licenses.mpl20;
        mozPermissions = [
          "storage"
          "unlimitedStorage"
          "tabs"
          "cookies"
          "downloads"
          "identity"
          "alarms"
        ];
        platforms = platforms.all;
      };
    };
    "tbl2csv" = buildFirefoxXpiAddon {
      pname = "tbl2csv";
      version = "1.3.22";
      addonId = "{38dc25f6-5ed7-4279-a1fb-832b5e90a98b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4260089/tbl2csv-1.3.22.xpi";
      sha256 = "7978a223e9052045a4d9c795bad674e31392f10b4fae9b8bbfeee5cc62ba1b7d";
      meta = with lib;
      {
        homepage = "https://github.com/igorlogius/tbl2csv";
        description = "Save HTML Tables, CSS Pseudo/DIV Tables or Lists (UL/OL) as a comma seperated values (CSV) file which can be opened with any spreadsheet processor (e.g. excel, libreoffice-calc,gnumeric) for further processing and conversion (e.g. to xls or ods)";
        license = licenses.bsd2;
        mozPermissions = [ "menus" "activeTab" ];
        platforms = platforms.all;
      };
    };
    "temporary-containers" = buildFirefoxXpiAddon {
      pname = "temporary-containers";
      version = "1.9.2";
      addonId = "{c607c8df-14a7-4f28-894f-29e8722976af}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3723251/temporary_containers-1.9.2.xpi";
      sha256 = "3340a08c29be7c83bd0fea3fc27fde71e4608a4532d932114b439aa690e7edc0";
      meta = with lib;
      {
        homepage = "https://github.com/stoically/temporary-containers";
        description = "Open tabs, websites, and links in automatically managed disposable containers which isolate the data websites store (cookies, storage, and more) from each other, enhancing your privacy and security while you browse.";
        license = licenses.mit;
        mozPermissions = [
          "<all_urls>"
          "contextMenus"
          "contextualIdentities"
          "cookies"
          "management"
          "storage"
          "tabs"
          "webRequest"
          "webRequestBlocking"
        ];
        platforms = platforms.all;
      };
    };
    "tree-style-tab" = buildFirefoxXpiAddon {
      pname = "tree-style-tab";
      version = "4.0.20";
      addonId = "treestyletab@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4310845/tree_style_tab-4.0.20.xpi";
      sha256 = "1c1588dc4cafff49344cfc97df40d763651aea3964de774c925e460e8e307552";
      meta = with lib;
      {
        homepage = "http://piro.sakura.ne.jp/xul/_treestyletab.html.en";
        description = "Show tabs like a tree.";
        license = {
          shortName = "tree-style-tab";
          fullName = "Tree Style Tab License, primarily MPL 2.0";
          url = "https://github.com/piroor/treestyletab/blob/trunk/COPYING.txt";
          free = true;
        };
        mozPermissions = [
          "activeTab"
          "contextualIdentities"
          "cookies"
          "menus"
          "menus.overrideContext"
          "notifications"
          "search"
          "sessions"
          "storage"
          "tabs"
          "theme"
        ];
        platforms = platforms.all;
      };
    };
    "tridactyl" = buildFirefoxXpiAddon {
      pname = "tridactyl";
      version = "1.24.1";
      addonId = "tridactyl.vim@cmcaine.co.uk";
      url = "https://addons.mozilla.org/firefox/downloads/file/4261352/tridactyl_vim-1.24.1.xpi";
      sha256 = "ab63fe1554471c280f234409393172fc58e1bb2ca527f4329d983b028073e19c";
      meta = with lib;
      {
        homepage = "https://tridactyl.xyz";
        description = "Vim, but in your browser. Replace Firefox's control mechanism with one modelled on Vim.\n\nThis addon is very usable, but is in an early stage of development. We intend to implement the majority of Vimperator's features.";
        license = licenses.asl20;
        mozPermissions = [
          "activeTab"
          "bookmarks"
          "browsingData"
          "contextMenus"
          "contextualIdentities"
          "cookies"
          "clipboardWrite"
          "clipboardRead"
          "downloads"
          "find"
          "history"
          "search"
          "sessions"
          "storage"
          "tabHide"
          "tabs"
          "topSites"
          "management"
          "nativeMessaging"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "proxy"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "tst-search" = buildFirefoxXpiAddon {
      pname = "tst-search";
      version = "0.0.7";
      addonId = "@tst-search";
      url = "https://addons.mozilla.org/firefox/downloads/file/4145356/tst_search-0.0.7.xpi";
      sha256 = "5979b6ebc694ed1e62d27fec8f750dcb7f09ca393a4ce8ca552d56b7e7241bef";
      meta = with lib;
      {
        homepage = "https://github.com/NiklasGollenstede/tst-search#readme";
        description = "Search for or filter the Tabs in TST's sidebar, and quickly find and activate them.";
        license = licenses.mpl20;
        mozPermissions = [ "storage" "notifications" "tabs" ];
        platforms = platforms.all;
      };
    };
    "ublock-origin" = buildFirefoxXpiAddon {
      pname = "ublock-origin";
      version = "1.58.0";
      addonId = "uBlock0@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4290466/ublock_origin-1.58.0.xpi";
      sha256 = "470c56994a7174db21578adce598b158a5dc0970c87c5cfe889ac632bd3085ea";
      meta = with lib;
      {
        homepage = "https://github.com/gorhill/uBlock#ublock-origin";
        description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
        license = licenses.gpl3;
        mozPermissions = [
          "alarms"
          "dns"
          "menus"
          "privacy"
          "storage"
          "tabs"
          "unlimitedStorage"
          "webNavigation"
          "webRequest"
          "webRequestBlocking"
          "<all_urls>"
          "http://*/*"
          "https://*/*"
          "file://*/*"
          "https://easylist.to/*"
          "https://*.fanboy.co.nz/*"
          "https://filterlists.com/*"
          "https://forums.lanik.us/*"
          "https://github.com/*"
          "https://*.github.io/*"
          "https://github.com/uBlockOrigin/*"
          "https://ublockorigin.github.io/*"
          "https://*.reddit.com/r/uBlockOrigin/*"
        ];
        platforms = platforms.all;
      };
    };
    "vim-vixen" = buildFirefoxXpiAddon {
      pname = "vim-vixen";
      version = "1.2.3";
      addonId = "vim-vixen@i-beam.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3845233/vim_vixen-1.2.3.xpi";
      sha256 = "8f86c77ac8e65dfd3f1a32690b56ce9231ac7686d5a86bf85e3d5cc5a3a9e9b5";
      meta = with lib;
      {
        homepage = "https://github.com/ueokande/vim-vixen";
        description = "Accelerates your web browsing with Vim power!!";
        license = licenses.mit;
        mozPermissions = [
          "history"
          "sessions"
          "storage"
          "tabs"
          "clipboardRead"
          "notifications"
          "bookmarks"
          "browserSettings"
          "<all_urls>"
        ];
        platforms = platforms.all;
      };
    };
    "vimium-ff" = buildFirefoxXpiAddon {
      pname = "vimium-ff";
      version = "2.1.2";
      addonId = "{d7742d87-e61d-4b78-b8a1-b469842139fa}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4259790/vimium_ff-2.1.2.xpi";
      sha256 = "3b9d43ee277ff374e3b1153f97dc20cb06e654116a833674c79b43b8887820e1";
      meta = with lib;
      {
        homepage = "https://github.com/philc/vimium";
        description = "The Hacker's Browser. Vimium provides keyboard shortcuts for navigation and control in the spirit of Vim.";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "bookmarks"
          "history"
          "storage"
          "sessions"
          "notifications"
          "scripting"
          "webNavigation"
          "clipboardRead"
          "clipboardWrite"
          "<all_urls>"
          "file:///"
          "file:///*/"
        ];
        platforms = platforms.all;
      };
    };
    "violentmonkey" = buildFirefoxXpiAddon {
      pname = "violentmonkey";
      version = "2.20.0";
      addonId = "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4315769/violentmonkey-2.20.0.xpi";
      sha256 = "94fe88507ea47e8cc5ca80b76a6aaec44a486dbfd515a03f82f228dc24d49910";
      meta = with lib;
      {
        homepage = "https://violentmonkey.github.io/";
        description = "Userscript support for browsers, open source.";
        license = licenses.mit;
        mozPermissions = [
          "tabs"
          "<all_urls>"
          "webRequest"
          "webRequestBlocking"
          "notifications"
          "storage"
          "unlimitedStorage"
          "clipboardWrite"
          "contextMenus"
          "cookies"
        ];
        platforms = platforms.all;
      };
    };
    "wave" = buildFirefoxXpiAddon {
      pname = "wave";
      version = "3.2.4.1";
      addonId = "{9bbf6724-d709-492e-a313-bfed0415a224}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4134752/wave_accessibility_tool-3.2.4.1.xpi";
      sha256 = "5d1bb0f4f76de9ac585e2fe945943029c2c673d643845fd5adeba9e3efa433de";
      meta = with lib;
      {
        description = "Evaluate web accessibility within the Firefox browser. When activated, the WAVE extension injects icons and indicators into your page to give feedback about accessibility and to facilitate manual evaluation.";
        license = {
          shortName = "wave";
          fullName = "Terms of Use and Privacy Notice for WAVE users";
          url = "https://wave.webaim.org/terms";
          free = false;
        };
        mozPermissions = [
          "http://*/*"
          "https://*/*"
          "file:///*"
          "<all_urls>"
          "tabs"
          "contextMenus"
        ];
        platforms = platforms.all;
      };
    };
    "wayback-machine" = buildFirefoxXpiAddon {
      pname = "wayback-machine";
      version = "3.2";
      addonId = "wayback_machine@mozilla.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4047136/wayback_machine_new-3.2.xpi";
      sha256 = "75da413fee7c28e22ed61380f959888ec80c14e2a38f7b6f9d622f8a4ea853e4";
      meta = with lib;
      {
        homepage = "https://archive.org";
        description = "Welcome to the Official Internet Archive Wayback Machine Browser Extension! Go back in time to see how a website has changed through the history of the Web. Save websites, view missing 404 Not Found pages, or read archived books &amp; papers.";
        license = licenses.gpl3;
        mozPermissions = [
          "activeTab"
          "cookies"
          "contextMenus"
          "notifications"
          "storage"
          "webRequest"
          "webRequestBlocking"
          "https://archive.org/*"
          "https://*.archive.org/*"
          "https://hypothes.is/*"
          "<all_urls>"
          "http://*.wikipedia.org/*"
          "https://*.wikipedia.org/*"
        ];
        platforms = platforms.all;
      };
    };
    "zoom-scheduler" = buildFirefoxXpiAddon {
      pname = "zoom-scheduler";
      version = "2.1.57";
      addonId = "{bf855ead-d7c3-4c7b-9f88-9a7e75c0efdf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4313265/zoom_new_scheduler-2.1.57.xpi";
      sha256 = "0e2b6aba78ca4d5888bf5fcafa3cc3633e047e9bf44769a7e2178d56d896381b";
      meta = with lib;
      {
        homepage = "https://zoom.us/";
        description = "Recommended, support FireFox 45+.\nThe Zoom Firefox Extension allows participants to schedule Zoom cloud meetings directly from Google Calendar. you can start an instant meeting or schedule a future meeting via a button.";
        license = licenses.mit;
        mozPermissions = [
          "activeTab"
          "storage"
          "unlimitedStorage"
          "https://calendar.google.com/calendar/*"
          "https://accounts.google.com/Logout"
          "https://*.zoom.us/*"
          "https://*.zoom.com/*"
          "https://*.zoom.us/google/oauth/*"
          "https://*.zoom.us/saml/extension/*"
          "https://*.zoom.us/zm/extension_login/*"
          "https://*.zoom.com/google/oauth/*"
          "https://*.zoom.com/saml/extension/*"
          "https://*.zoom.com/zm/extension_login/*"
          "https://*.zoom.com/myhome*"
          "https://*.zoom.us/myhome*"
        ];
        platforms = platforms.all;
      };
    };
  }