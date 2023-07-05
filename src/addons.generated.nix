{ buildFirefoxXpiAddon, fetchurl, lib, stdenv }:
  {
    "a11ycss" = buildFirefoxXpiAddon {
      pname = "a11ycss";
      version = "2.0.0";
      addonId = "a11y.css@ffoodd";
      url = "https://addons.mozilla.org/firefox/downloads/file/4132650/a11ycss-2.0.0.xpi";
      sha256 = "b42f351fec4d69b65f3d6e0ea23de01bbe0e903ca790db8356cb970eba06fd9b";
      meta = with lib;
      {
        homepage = "https://ffoodd.github.io/a11y.css/";
        description = "a11y.css provides warnings about possible risks and mistakes that exist in HTML code through a style sheet. This extension also provides several accessibility-related utilities.\n\nsee <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4c643171ccddfcfa3712d45a2b7b615f54195eb4507868ab6ef3fbf6694dc4c2/https%3A//github.com/ffoodd/a11y.css/tree/webextension\" rel=\"nofollow\">https://github.com/ffoodd/a11y.css/tree/webextension</a> for  details";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "anchors-reveal" = buildFirefoxXpiAddon {
      pname = "anchors-reveal";
      version = "1.1";
      addonId = "jid1-XX0TcCGBa7GVGw@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/1690998/anchors_reveal-1.1.xpi";
      sha256 = "0412acabe742f7e78ff77aa95c4196150c240592a1bbbad75012b39a05352c36";
      meta = with lib;
      {
        homepage = "http://dascritch.net/post/2014/06/24/Sniffeur-d-ancre";
        description = "Reveal the anchors in a webpage";
        license = licenses.gpl3;
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
        platforms = platforms.all;
        };
      };
    "bitwarden" = buildFirefoxXpiAddon {
      pname = "bitwarden";
      version = "2023.5.1";
      addonId = "{446900e4-71c2-419f-a6a7-df9c091e268b}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4128403/bitwarden_password_manager-2023.5.1.xpi";
      sha256 = "92f491cf260e4018192e94e866e5b2c5cd00102873d032331e28fe6ae308c010";
      meta = with lib;
      {
        homepage = "https://bitwarden.com";
        description = "A secure and free password manager for all of your devices.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "browserpass" = buildFirefoxXpiAddon {
      pname = "browserpass";
      version = "3.7.2";
      addonId = "browserpass@maximbaz.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3711209/browserpass_ce-3.7.2.xpi";
      sha256 = "b1781405b46f3274697885b53139264dca2ab56ffc4435c093102ad5ebc59297";
      meta = with lib;
      {
        homepage = "https://github.com/browserpass/browserpass-extension";
        description = "Browserpass is a browser extension for Firefox and Chrome to retrieve login details from zx2c4's pass (<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fcd8dcb23434c51a78197a1c25d3e2277aa1bc764c827b4b4726ec5a5657eb64/http%3A//passwordstore.org\" rel=\"nofollow\">passwordstore.org</a>) straight from your browser. Tags: passwordstore, password store, password manager, passwordmanager, gpg";
        license = licenses.isc;
        platforms = platforms.all;
        };
      };
    "consent-o-matic" = buildFirefoxXpiAddon {
      pname = "consent-o-matic";
      version = "1.0.12";
      addonId = "gdpr@cavi.au.dk";
      url = "https://addons.mozilla.org/firefox/downloads/file/4074847/consent_o_matic-1.0.12.xpi";
      sha256 = "013ea48757b8a4d84a2a0d944bc49b5612d62bae1d337f9569f425f2b8310e0f";
      meta = with lib;
      {
        homepage = "https://consentomatic.au.dk/";
        description = "Automatic handling of GDPR consent forms";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "copy-selection-as-markdown" = buildFirefoxXpiAddon {
      pname = "copy-selection-as-markdown";
      version = "0.21.0";
      addonId = "{db9a72da-7bc5-4805-bcea-da3cb1a15316}";
      url = "https://addons.mozilla.org/firefox/downloads/file/3802383/copy_selection_as_markdown-0.21.0.xpi";
      sha256 = "ead9406f8e9afbe409a55c5b5b3d9d4eb9f0b8fb0f3f42c985b86bcfe2173ed4";
      meta = with lib;
      {
        homepage = "https://github.com/0x6b/copy-selection-as-markdown";
        description = "Copy title, URL, and selection as Markdown.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "darkreader" = buildFirefoxXpiAddon {
      pname = "darkreader";
      version = "4.9.64";
      addonId = "addon@darkreader.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/4128489/darkreader-4.9.64.xpi";
      sha256 = "c09ed43a96dccab1de3445aac263de0569e3333da330d645094e3f938f13b30e";
      meta = with lib;
      {
        homepage = "https://darkreader.org/";
        description = "Dark mode for every website. Take care of your eyes, use dark theme for night and daily browsing.";
        license = licenses.mit;
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
        platforms = platforms.all;
        };
      };
    "gnome-shell-integration" = buildFirefoxXpiAddon {
      pname = "gnome-shell-integration";
      version = "11.1";
      addonId = "chrome-gnome-shell@gnome.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3974897/gnome_shell_integration-11.1.xpi";
      sha256 = "dff05cff4e53254c03a91d047e776f77aeb1d069540aecd5e48209fae2a44c3b";
      meta = with lib;
      {
        homepage = "https://wiki.gnome.org/Projects/GnomeShellIntegrationForChrome";
        description = "This extension provides integration with GNOME Shell and the corresponding extensions repository <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/b16ff805576d83628b80265636b483e6f56c58d6e812e04045626ff602eff739/https%3A//extensions.gnome.org\" rel=\"nofollow\">https://extensions.gnome.org</a>";
        license = licenses.gpl3;
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
        platforms = platforms.all;
        };
      };
    "kagi-search" = buildFirefoxXpiAddon {
      pname = "kagi-search";
      version = "0.2";
      addonId = "search@kagi.com";
      url = "https://addons.mozilla.org/firefox/downloads/file/3942576/kagi_search_for_firefox-0.2.xpi";
      sha256 = "3fd046ba0332fa76bc00bedf0f9d1c9282618c1545016bbfde246b1c8f34d311";
      meta = with lib;
      {
        description = "A simple helper extension for setting Kagi as a default search engine, and automatically logging in to Kagi in private browsing windows.";
        license = licenses.mpl20;
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
        platforms = platforms.all;
        };
      };
    "libredirect" = buildFirefoxXpiAddon {
      pname = "libredirect";
      version = "2.6.2";
      addonId = "7esoorv3@alefvanoon.anonaddy.me";
      url = "https://addons.mozilla.org/firefox/downloads/file/4116106/libredirect-2.6.2.xpi";
      sha256 = "e813e907abd4bc5871cb23bd95305221eee4f99d6ca8f82f1d696f6bd8dcaa41";
      meta = with lib;
      {
        homepage = "https://libredirect.github.io";
        description = "Redirects YouTube, Twitter, TikTok... requests to alternative privacy friendly frontends.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "link-cleaner" = buildFirefoxXpiAddon {
      pname = "link-cleaner";
      version = "1.5";
      addonId = "{6d85dea2-0fb4-4de3-9f8c-264bce9a2296}";
      url = "https://addons.mozilla.org/firefox/downloads/file/671858/link_cleaner-1.5.xpi";
      sha256 = "1ecec8cbe78b4166fc50da83213219f30575a8c183f7a13aabbff466c71ce560";
      meta = with lib;
      {
        homepage = "https://github.com/idlewan/link_cleaner";
        description = "Clean URLs that are about to be visited:\n- removes utm_* parameters\n- on item pages of aliexpress and amazon, removes tracking parameters\n- skip redirect pages of facebook, steam and reddit";
        license = licenses.gpl3;
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
        platforms = platforms.all;
        };
      };
    "multi-account-containers" = buildFirefoxXpiAddon {
      pname = "multi-account-containers";
      version = "8.1.2";
      addonId = "@testpilot-containers";
      url = "https://addons.mozilla.org/firefox/downloads/file/4058426/multi_account_containers-8.1.2.xpi";
      sha256 = "0ab8f0222853fb68bc05fcf96401110910dfeb507aaea2cf88c5cd7084d167fc";
      meta = with lib;
      {
        homepage = "https://github.com/mozilla/multi-account-containers/#readme";
        description = "Firefox Multi-Account Containers lets you keep parts of your online life separated into color-coded tabs. Cookies are separated by container, allowing you to use the web with multiple accounts and integrate Mozilla VPN for an extra layer of privacy.";
        license = licenses.mpl20;
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
        platforms = platforms.all;
        };
      };
    "old-reddit-redirect" = buildFirefoxXpiAddon {
      pname = "old-reddit-redirect";
      version = "1.7.0";
      addonId = "{9063c2e9-e07c-4c2c-9646-cfe7ca8d0498}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4126417/old_reddit_redirect-1.7.0.xpi";
      sha256 = "6b70b536b5a14ac8c49f73e8b5f751d36b1e3837f079a3b76d302392bf91de5f";
      meta = with lib;
      {
        homepage = "https://github.com/tom-james-watson/old-reddit-redirect";
        description = "Ensure Reddit always loads the old design";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "onepassword-password-manager" = buildFirefoxXpiAddon {
      pname = "onepassword-password-manager";
      version = "2.11.0";
      addonId = "{d634138d-c276-4fc8-924b-40a0ea21d284}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4118285/1password_x_password_manager-2.11.0.xpi";
      sha256 = "c02b78db3f4847553239a44d3ccb8453dbac1c8145ddabf00a8fe5dcd8c8e068";
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
        platforms = platforms.all;
        };
      };
    "org-capture" = buildFirefoxXpiAddon {
      pname = "org-capture";
      version = "0.2.1";
      addonId = "{ddefd400-12ea-4264-8166-481f23abaa87}";
      url = "https://addons.mozilla.org/firefox/downloads/file/1127481/org_capture-0.2.1.xpi";
      sha256 = "5683ee1ebfafc24abc2d759c7180c4e839c24fa90764d8cf3285c5d72fc81f0a";
      meta = with lib;
      {
        homepage = "https://github.com/sprig/org-capture-extension";
        description = "A helper for capturing things via org-protocol in emacs: First, set up: <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/04ad17418f8d35ee0f3edf4599aed951b2a5ef88d4bc7e0e3237f6d86135e4fb/http%3A//orgmode.org/worg/org-contrib/org-protocol.html\">http://orgmode.org/worg/org-contrib/org-protocol.html</a> or <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/fb401af8127ccf82bc948b0a7af0543eec48d58100c0c46404f81aabeda442e6/https%3A//github.com/sprig/org-capture-extension\">https://github.com/sprig/org-capture-extension</a>\n\nSee <a rel=\"nofollow\" href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/6aad51cc4e2f9476f9fff344e6554eade08347181aed05f8b61cda05073daecb/https%3A//youtu.be/zKDHto-4wsU\">https://youtu.be/zKDHto-4wsU</a> for example usage";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "plasma-integration" = buildFirefoxXpiAddon {
      pname = "plasma-integration";
      version = "1.8.1";
      addonId = "plasma-browser-integration@kde.org";
      url = "https://addons.mozilla.org/firefox/downloads/file/3859385/plasma_integration-1.8.1.xpi";
      sha256 = "e156e82091bbff44cb9d852e16aedacdcc0819c5a3b8cb34cedd77acf566c5c4";
      meta = with lib;
      {
        homepage = "http://kde.org";
        description = "Multitask efficiently by controlling browser functions from the Plasma desktop.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "raindropio" = buildFirefoxXpiAddon {
      pname = "raindropio";
      version = "6.6.9";
      addonId = "jid0-adyhmvsP91nUO8pRv0Mn2VKeB84@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4128536/raindropio-6.6.9.xpi";
      sha256 = "c35fe9ee6bc36fb36b7eaa4f08a416eaab200d944b51d096b529a8530a476f30";
      meta = with lib;
      {
        homepage = "https://raindrop.io";
        description = "All-in-one bookmark manager";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "react-devtools" = buildFirefoxXpiAddon {
      pname = "react-devtools";
      version = "4.27.8";
      addonId = "@react-devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/4113335/react_devtools-4.27.8.xpi";
      sha256 = "fae1c35e731984e4375300df0c4d8ee233ec10cdabe4cafe5cfaca080e063446";
      meta = with lib;
      {
        homepage = "https://github.com/facebook/react";
        description = "React Developer Tools is a tool that allows you to inspect a React tree, including the component hierarchy, props, state, and more. To get started, just open the Firefox devtools and switch to the \"⚛️ Components\" or \"⚛️ Profiler\" tab.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "reddit-enhancement-suite" = buildFirefoxXpiAddon {
      pname = "reddit-enhancement-suite";
      version = "5.22.17";
      addonId = "jid1-xUfzOsOFlzSOXg@jetpack";
      url = "https://addons.mozilla.org/firefox/downloads/file/4092764/reddit_enhancement_suite-5.22.17.xpi";
      sha256 = "f49827c7684076dbf6890741dbbc31e82c180f87cb3fd745216ba2432398b1d9";
      meta = with lib;
      {
        homepage = "https://redditenhancementsuite.com/";
        description = "Reddit Enhancement Suite (RES) is a suite of tools to enhance your Reddit browsing experience.";
        license = licenses.gpl3;
        platforms = platforms.all;
        };
      };
    "reduxdevtools" = buildFirefoxXpiAddon {
      pname = "reduxdevtools";
      version = "3.0.19";
      addonId = "extension@redux.devtools";
      url = "https://addons.mozilla.org/firefox/downloads/file/4079806/reduxdevtools-3.0.19.xpi";
      sha256 = "f4da621d3d226cd3dcd817230e4214ddbc2423221dc3ef4428341fd393d1f66f";
      meta = with lib;
      {
        homepage = "https://github.com/reduxjs/redux-devtools";
        description = "DevTools for Redux with actions history, undo and replay.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "refined-github" = buildFirefoxXpiAddon {
      pname = "refined-github";
      version = "23.6.17";
      addonId = "{a4c4eda4-fb84-4a84-b4a1-f7c1cbf2a1ad}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4126274/refined_github-23.6.17.xpi";
      sha256 = "5297353e020ae72b72c195388a08d74a99f3f735468f391633296898f0159686";
      meta = with lib;
      {
        homepage = "https://github.com/sindresorhus/refined-github";
        description = "Simplifies the GitHub interface and adds many useful features.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "rust-search-extension" = buildFirefoxXpiAddon {
      pname = "rust-search-extension";
      version = "1.11.1";
      addonId = "{04188724-64d3-497b-a4fd-7caffe6eab29}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4101007/rust_search_extension-1.11.1.xpi";
      sha256 = "0e98ea24d5d12dc2678a3f9c6961d1883c3ac69741e9e1090b8bd715124f1c99";
      meta = with lib;
      {
        homepage = "https://rust.extension.sh";
        description = "The ultimate search extension for Rust\n\nSearch std docs, crates, builtin attributes, official books, and error codes, etc in your address bar instantly.\n<a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/4af48e3229ba03b454fb9b352a7e5a4c038e1bcc6721bf744b781a5e96b9e798/https%3A//rust.extension.sh\" rel=\"nofollow\">https://rust.extension.sh</a>";
        license = licenses.mpl20;
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
        platforms = platforms.all;
        };
      };
    "single-file" = buildFirefoxXpiAddon {
      pname = "single-file";
      version = "1.21.43";
      addonId = "{531906d3-e22f-4a6c-a102-8057b88a1a63}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4128372/single_file-1.21.43.xpi";
      sha256 = "96ca441d989867e67c235f92c5601d77ead20552a5bdafb7615c04364911cc05";
      meta = with lib;
      {
        homepage = "https://github.com/gildas-lormeau/SingleFile";
        description = "Save an entire web page—including images and styling—as a single HTML file.";
        license = licenses.agpl3Plus;
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
        platforms = platforms.all;
        };
      };
    "steam-database" = buildFirefoxXpiAddon {
      pname = "steam-database";
      version = "3.6.7";
      addonId = "firefox-extension@steamdb.info";
      url = "https://addons.mozilla.org/firefox/downloads/file/4128503/steam_database-3.6.7.xpi";
      sha256 = "44a2d00113c7523e08f03445e4983e9fd3e5f295ba096c7e5946a934c322450f";
      meta = with lib;
      {
        homepage = "https://steamdb.info/";
        description = "Adds SteamDB links and new features on the Steam store and community. View lowest game prices and stats.";
        license = licenses.bsd3;
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
        platforms = platforms.all;
        };
      };
    "stylus" = buildFirefoxXpiAddon {
      pname = "stylus";
      version = "1.5.33";
      addonId = "{7a7a4a92-a2a0-41d1-9fd7-1e92480d612d}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4114817/styl_us-1.5.33.xpi";
      sha256 = "d6b8cc1f4d0986ffa117999065eb5bb8b5596136aa60cb9ff746073656704822";
      meta = with lib;
      {
        homepage = "https://add0n.com/stylus.html";
        description = "Redesign your favorite websites with Stylus, an actively developed and community driven userstyles manager. Easily install custom themes from popular online repositories, or create, edit, and manage your own personalized CSS stylesheets.";
        license = licenses.gpl3Plus;
        platforms = platforms.all;
        };
      };
    "tab-session-manager" = buildFirefoxXpiAddon {
      pname = "tab-session-manager";
      version = "6.12.1";
      addonId = "Tab-Session-Manager@sienori";
      url = "https://addons.mozilla.org/firefox/downloads/file/4002882/tab_session_manager-6.12.1.xpi";
      sha256 = "a3128a187fa42d45f7beca2480ebd3117a40bc591e6df726336932e081860747";
      meta = with lib;
      {
        homepage = "https://tab-session-manager.sienori.com/";
        description = "Save and restore the state of windows and tabs. It also supports automatic saving and cloud sync.";
        license = licenses.mpl20;
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
        platforms = platforms.all;
        };
      };
    "tree-style-tab" = buildFirefoxXpiAddon {
      pname = "tree-style-tab";
      version = "3.9.15";
      addonId = "treestyletab@piro.sakura.ne.jp";
      url = "https://addons.mozilla.org/firefox/downloads/file/4088468/tree_style_tab-3.9.15.xpi";
      sha256 = "7c993bae2d43488615f1a3b7459a2c35730a486b3855049709c636a84751d252";
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
        platforms = platforms.all;
        };
      };
    "tridactyl" = buildFirefoxXpiAddon {
      pname = "tridactyl";
      version = "1.23.0";
      addonId = "tridactyl.vim@cmcaine.co.uk";
      url = "https://addons.mozilla.org/firefox/downloads/file/4036604/tridactyl_vim-1.23.0.xpi";
      sha256 = "08b7af97bef05300ab3ac3ad721322ff00505631233482568fc4489c16d51b71";
      meta = with lib;
      {
        homepage = "https://tridactyl.xyz";
        description = "Vim, but in your browser. Replace Firefox's control mechanism with one modelled on Vim.\n\nThis addon is very usable, but is in an early stage of development. We intend to implement the majority of Vimperator's features.";
        license = licenses.asl20;
        platforms = platforms.all;
        };
      };
    "tst-search" = buildFirefoxXpiAddon {
      pname = "tst-search";
      version = "0.0.6";
      addonId = "@tst-search";
      url = "https://addons.mozilla.org/firefox/downloads/file/4009035/tst_search-0.0.6.xpi";
      sha256 = "1c4ebfaadb2af712684acc96d12da69e86d4bcff9db84c97c20d3576722a4981";
      meta = with lib;
      {
        homepage = "https://github.com/NiklasGollenstede/tst-search#readme";
        description = "Search for or filter the Tabs in TST's sidebar, and quickly find and activate them.";
        license = licenses.mpl20;
        platforms = platforms.all;
        };
      };
    "ublock-origin" = buildFirefoxXpiAddon {
      pname = "ublock-origin";
      version = "1.50.0";
      addonId = "uBlock0@raymondhill.net";
      url = "https://addons.mozilla.org/firefox/downloads/file/4121906/ublock_origin-1.50.0.xpi";
      sha256 = "10618003e70b528c3f17996e373146d39e6b15f777ac4ca1f214da2ffdb7a5b3";
      meta = with lib;
      {
        homepage = "https://github.com/gorhill/uBlock#ublock-origin";
        description = "Finally, an efficient wide-spectrum content blocker. Easy on CPU and memory.";
        license = licenses.gpl3;
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
        platforms = platforms.all;
        };
      };
    "vimium-ff" = buildFirefoxXpiAddon {
      pname = "vimium-ff";
      version = "1.67.6";
      addonId = "{d7742d87-e61d-4b78-b8a1-b469842139fa}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4046008/vimium_ff-1.67.6.xpi";
      sha256 = "e8d6c98842bd7221d62d1079e4153e3e0d20c5ca5412316dd71cb5c3bdb7d457";
      meta = with lib;
      {
        homepage = "https://github.com/philc/vimium";
        description = "The Hacker's Browser. Vimium provides keyboard shortcuts for navigation and control in the spirit of Vim.This is a port of the popular Chrome extension to Firefox.Most stuff works, but the port to Firefox remains a work in progress.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "violentmonkey" = buildFirefoxXpiAddon {
      pname = "violentmonkey";
      version = "2.14.0";
      addonId = "{aecec67f-0d10-4fa7-b7c7-609a2db280cf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4076005/violentmonkey-2.14.0.xpi";
      sha256 = "6c25cfb7d464c22ea4c560e5271a0cacd49b8fe0c404420fb5b4fd2c78880b2d";
      meta = with lib;
      {
        homepage = "https://violentmonkey.github.io/";
        description = "Violentmonkey provides userscripts support for browsers.\nIt's open source! <a href=\"https://prod.outgoing.prod.webservices.mozgcp.net/v1/c8bcebd9a0e76f20c888274e94578ab5957439e46d59a046ff9e1a9ef55c282c/https%3A//github.com/violentmonkey/violentmonkey\" rel=\"nofollow\">https://github.com/violentmonkey/violentmonkey</a>";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    "wave" = buildFirefoxXpiAddon {
      pname = "wave";
      version = "3.2.2.0";
      addonId = "{9bbf6724-d709-492e-a313-bfed0415a224}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4041128/wave_accessibility_tool-3.2.2.0_1KT3nNP.xpi";
      sha256 = "ba4aefa44b4b4eb9d81b533b15219129296c331cba5de68d647fe56b917ab5b7";
      meta = with lib;
      {
        description = "Evaluate web accessibility within the Firefox browser. When activated, the WAVE extension injects icons and indicators into your page to give feedback about accessibility and to facilitate manual evaluation.";
        license = {
          shortName = "wave";
          fullName = "Terms of Use and Privacy Notice for WAVE users";
          url = "https://wave.webaim.org/terms";
          free = false;
          };
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
        platforms = platforms.all;
        };
      };
    "zoom-scheduler" = buildFirefoxXpiAddon {
      pname = "zoom-scheduler";
      version = "2.1.45";
      addonId = "{bf855ead-d7c3-4c7b-9f88-9a7e75c0efdf}";
      url = "https://addons.mozilla.org/firefox/downloads/file/4129840/zoom_new_scheduler-2.1.45.xpi";
      sha256 = "00237101a59a0d94f54ffc4eb3f5f1663195bcb41b350531cecf42dc9f931acf";
      meta = with lib;
      {
        homepage = "https://zoom.us/";
        description = "Recommended, support FireFox 45+.\nThe Zoom Firefox Extension allows participants to schedule Zoom cloud meetings directly from Google Calendar. you can start an instant meeting or schedule a future meeting via a button.";
        license = licenses.mit;
        platforms = platforms.all;
        };
      };
    }