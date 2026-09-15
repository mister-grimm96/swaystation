// user_pref("browser.uiCustomization.state", "{\"placements\":{\"widget-overflow-fixed-list\":[],\"unified-extensions-area\":[],\"nav-bar\":[\"firefox-view-button\",\"save-page-button\",\"open-file-button\",\"screenshot-button\",\"back-button\",\"stop-reload-button\",\"forward-button\",\"vertical-spacer\",\"home-button\",\"privatebrowsing-button\",\"urlbar-container\",\"developer-button\",\"history-panelmenu\",\"downloads-button\",\"preferences-button\",\"unified-extensions-button\",\"alltabs-button\",\"reset-pbm-toolbar-button\",\"ublock0_raymondhill_net-browser-action\",\"_d7742d87-e61d-4b78-b8a1-b469842139fa_-browser-action\",\"_b9db16a4-6edc-47ec-a1f4-b86292ed211d_-browser-action\",\"_a6c4a591-f1b2-4f03-b3ff-767e5bedf4e7_-browser-action\"],\"toolbar-menubar\":[\"menubar-items\"],\"TabsToolbar\":[],\"vertical-tabs\":[\"tabbrowser-tabs\"],\"PersonalToolbar\":[\"import-button\",\"personal-bookmarks\"]},\"seen\":[\"developer-button\",\"profiler-button\",\"screenshot-button\",\"reset-pbm-toolbar-button\",\"_d7742d87-e61d-4b78-b8a1-b469842139fa_-browser-action\",\"ublock0_raymondhill_net-browser-action\",\"_a6c4a591-f1b2-4f03-b3ff-767e5bedf4e7_-browser-action\",\"_b9db16a4-6edc-47ec-a1f4-b86292ed211d_-browser-action\"],\"dirtyAreaCache\":[\"nav-bar\",\"vertical-tabs\",\"PersonalToolbar\",\"toolbar-menubar\",\"TabsToolbar\",\"unified-extensions-area\"],\"currentVersion\":25,\"newElementCount\":4}");
// ==============================================================
/** STARTUP & UI CUSTOMIZATION **/
user_pref("_user.js.parrot", "START: Oh yes, the Norwegian Blue... what's wrong with it?");
user_pref("toolkit.legacyUserProfileCustomizations.stylesheets", true);
user_pref("browser.aboutConfig.showWarning", false);
user_pref("browser.download.autohideButton", false);
user_pref("browser.startup.page", 1);
user_pref("browser.startup.homepage", "about:newtab");
user_pref("browser.display.background_color", "#222222");
user_pref("browser.display.foreground_color", "#ffffff");

user_pref("devtools.chrome.enabled", true);
user_pref("devtools.debugger.remote-enabled", true);
// ==============================================================
/** NEW TAB PAGE & CONTENT RECOMMENDATIONS **/
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtabpage.activity-stream.showSponsored", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredTopSites", false);
user_pref("browser.newtabpage.activity-stream.showSponsoredCheckboxes", false);
user_pref("browser.newtabpage.activity-stream.default.sites", "");
user_pref("extensions.getAddons.showPane", false);
user_pref("extensions.htmlaboutaddons.recommendations.enabled", false);
user_pref("browser.discovery.enabled", false);
user_pref("browser.newtabpage.activity-stream.showSearch", false);
user_pref("browser.newtabpage.activity-stream.feeds.topsites", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);

// ==============================================================
/** GEOLOCATION **/
user_pref("geo.provider.ms-windows-location", false);
user_pref("geo.provider.use_corelocation", false);
user_pref("geo.provider.use_geoclue", false);

// ==============================================================
/** TELEMETRY & DIAGNOSTICS **/
user_pref("_user.js.parrot", "0100 syntax error: the parrot's dead!");
user_pref("_user.js.parrot", "0200 syntax error: the parrot's definitely deceased!");
user_pref("_user.js.parrot", "0300 syntax error: the parrot's not pinin' for the fjords!");
user_pref("browser.newtabpage.activity-stream.feeds.telemetry", false);
user_pref("browser.newtabpage.activity-stream.telemetry", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("app.normandy.enabled", false);
user_pref("app.normandy.api_url", "");
user_pref("breakpad.reportURL", "");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.autoSubmit2", false);
user_pref("toolkit.telemetry.cachedClientID", "c0ffeec0-ffee-c0ff-eec0-ffeec0ffeec0");
user_pref("toolkit.telemetry.cachedProfileGroupID", "decafdec-afde-cafd-ecaf-decafdecafde");
user_pref("datareporting.healthreport.uploadEnabled", false);
user_pref("datareporting.usage.uploadEnabled", false);
user_pref("datareporting.dau.cachedUsageProfileGroupID", "b0bacafe-b0ba-cafe-b0ba-cafeb0bacafe");
user_pref("datareporting.dau.cachedUsageProfileID", "beefbeef-beef-beef-beef-beeefbeefbee");
user_pref("nimbus.rollouts.enabled", false);

// ==============================================================
/** NETWORK & CONNECTIVITY **/
user_pref("captivedetect.canonicalURL", "");
user_pref("network.captive-portal-service.enabled", false);
user_pref("network.connectivity-service.enabled", false);
user_pref("_user.js.parrot", "0400 syntax error: the parrot's passed on!");
user_pref("network.prefetch-next", false);
user_pref("network.dns.disablePrefetch", true);
user_pref("network.dns.disablePrefetchFromHTTPS", true);
user_pref("network.predictor.enabled", false);
user_pref("network.predictor.enable-prefetch", false);
user_pref("network.http.speculative-parallel-limit", 0);
user_pref("browser.places.speculativeConnect.enabled", false);
user_pref("network.proxy.socks_remote_dns", true);
user_pref("network.file.disable_unc_paths", true);
user_pref("network.gio.supported-protocols", "");
user_pref("network.trr.mode", 5);

// ==============================================================
/** SAFE BROWSING **/
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("_user.js.parrot", "0600 syntax error: the parrot's no more!");

// ==============================================================
/** SEARCH & URL BAR **/
user_pref("browser.urlbar.suggest.quicksuggest.nonsponsored", false);
user_pref("browser.urlbar.suggest.quicksuggest.sponsored", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.suggest.bookmark", false);
user_pref("browser.urlbar.suggest.engines", false);
user_pref("browser.urlbar.suggest.history", false);
user_pref("browser.urlbar.suggest.openpage", false);
user_pref("browser.urlbar.suggest.quickactions", false);
user_pref("browser.urlbar.suggest.recentsearches", false);
user_pref("browser.urlbar.suggest.searches", false);
user_pref("browser.urlbar.suggest.topsites", false);
user_pref("_user.js.parrot", "0700 syntax error: the parrot's given up the ghost!");
user_pref("_user.js.parrot", "0800 syntax error: the parrot's ceased to be!");
user_pref("browser.urlbar.speculativeConnect.enabled", false);
user_pref("browser.urlbar.quicksuggest.enabled", false);
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.urlbar.trending.featureGate", false);
user_pref("browser.urlbar.addons.featureGate", false);
user_pref("browser.urlbar.amp.featureGate", false);
user_pref("browser.urlbar.fakespot.featureGate", false);
user_pref("browser.urlbar.mdn.featureGate", false);
user_pref("browser.urlbar.weather.featureGate", false);
user_pref("browser.urlbar.wikipedia.featureGate", false);
user_pref("browser.urlbar.yelp.featureGate", false);
user_pref("browser.search.separatePrivateDefault", false);
user_pref("browser.search.separatePrivateDefault.ui.enabled", true);
user_pref("browser.search.visualSearch.featureGate", false);

// ==============================================================
/** FORMS & PASSWORDS **/
user_pref("browser.formfill.enable", false);
user_pref("_user.js.parrot", "0900 syntax error: the parrot's expired!");
user_pref("signon.autofillForms", false);
user_pref("signon.formlessCapture.enabled", false);
user_pref("signon.rememberSignons", false);
user_pref("signon.management.page.breach-alerts.enabled", false);
user_pref("extensions.formautofill.creditCards.enabled", false);
user_pref("network.auth.subresource-http-auth-allow", 1);

// ==============================================================
/** DISK CACHE & SESSION PRIVACY **/
user_pref("_user.js.parrot", "1000 syntax error: the parrot's gone to meet 'is maker!");
user_pref("browser.cache.disk.enable", false);
user_pref("browser.privatebrowsing.forceMediaMemoryCache", true);
user_pref("media.memory_cache_max_size", 65536);
user_pref("browser.sessionstore.privacy_level", 2);
user_pref("toolkit.winRegisterApplicationRestart", false);
user_pref("browser.shell.shortcutFavicons", false);

// ==============================================================
/** SECURITY (SSL/TLS & HTTPS) **/
user_pref("_user.js.parrot", "1200 syntax error: the parrot's a stiff!");
user_pref("security.ssl.require_safe_negotiation", true);
user_pref("security.tls.enable_0rtt_data", false);
user_pref("security.OCSP.enabled", 1);
user_pref("security.OCSP.require", true);
user_pref("security.cert_pinning.enforcement_level", 2);
user_pref("security.remote_settings.crlite_filters.enabled", true);
user_pref("security.pki.crlite_mode", 2);
user_pref("dom.security.https_only_mode", true);
user_pref("dom.security.https_only_mode_send_http_background_request", false);
user_pref("security.ssl.treat_unsafe_negotiation_as_broken", true);
user_pref("browser.xul.error_pages.expert_bad_cert", true);

// ==============================================================
/** PRIVACY & TRACKING PROTECTION **/
user_pref("_user.js.parrot", "1600 syntax error: the parrot rests in peace!");
user_pref("network.http.referer.XOriginTrimmingPolicy", 2);
user_pref("_user.js.parrot", "1700 syntax error: the parrot's bit the dust!");
user_pref("privacy.userContext.enabled", true);
user_pref("privacy.userContext.ui.enabled", true);
user_pref("browser.contentblocking.category", "strict");
user_pref("privacy.globalprivacycontrol.enabled", true);

// ==============================================================
/** WEB RTC & DOM **/
user_pref("_user.js.parrot", "2000 syntax error: the parrot's snuffed it!");
user_pref("media.peerconnection.ice.proxy_only_if_behind_proxy", true);
user_pref("media.peerconnection.ice.default_address_only", true);
user_pref("_user.js.parrot", "2400 syntax error: the parrot's kicked the bucket!");
user_pref("dom.disable_window_move_resize", true);

// ==============================================================
/** THEMES & APPEARANCE **/
user_pref("_user.js.parrot", "2600 syntax error: the parrot's run down the curtain!");
user_pref("ui.systemUsesDarkTheme", 1);
user_pref("extensions.activeThemeID", "firefox-compact-dark@mozilla.org");
user_pref("browser.theme.content-theme", 0);
user_pref("browser.theme.toolbar-theme", 0);
user_pref("extensions.colorway-builtin-themes-cleanup", 1);
user_pref("layout.css.prefers-color-scheme.content-override", 0);
user_pref("browser.uidensity", 1);

// ==============================================================
/** BROWSER FEATURES & SIDEBAR **/
user_pref("media.videocontrols.picture-in-picture.video-toggle.enabled", false);
user_pref("browser.download.useDownloadDir", false);
user_pref("sidebar.verticalTabs", true);
user_pref("sidebar.position_start", false);
user_pref("sidebar.visibility", "always-show");
user_pref("sidebar.expandOnHover", false);
user_pref("browser.toolbars.bookmarks.visibility", "never");
user_pref("sidebar.revamp", false);
user_pref("sidebar.main.tools", " ");
user_pref("sidebar.notification.badge.aichat", false);

// ==============================================================
/** TAB & WINDOW MANAGEMENT **/
user_pref("browser.link.open_newwindow", 3);
user_pref("browser.tabs.loadInBackground", false);
user_pref("browser.link.open_newwindow.override.external", 7);
user_pref("browser.ctrlTab.sortByRecentlyUsed", true);
user_pref("browser.tabs.warnOnClose", true);
user_pref("browser.warnOnQuitShortcut", true);
user_pref("browser.tabs.groups.smart.userEnabled", false);
user_pref("full-screen-api.ignore-widgets", true);
user_pref("browser.tabs.inTitlebar", 0);
user_pref("browser.tabs.closeWindowWithLastTab", false);
user_pref("browser.fullscreen.autohide", false);
user_pref("browser.tabs.groups.smart.enabled", false);

// ==============================================================
/** AI (ML) FEATURES & EXPERIMENTS **/
user_pref("browser.ml.enable", false);
user_pref("browser.ml.chat.sidebar", false);
user_pref("browser.ml.chat.enabled", false);
user_pref("browser.ml.linkPreview.enabled", false);
user_pref("browser.ml.pageAssist.enabled", false);
user_pref("browser.ml.smartAssist.enabled", false);
user_pref("extensions.ml.enabled", false);
user_pref("browser.urlbar.quicksuggest.mlEnabled", false);
user_pref("pdfjs.enableAltText", false);
user_pref("places.semanticHistory.featureGate", false);
user_pref("browser.ai.control.default", "blocked");
user_pref("browser.ai.control.linkPreviewKeyPoints", "blocked");
user_pref("browser.ai.control.pdfjsAltText", "blocked");
user_pref("browser.ai.control.sidebarChatbot", "blocked");
user_pref("browser.ai.control.smartTabGroups", "blocked");
user_pref("browser.ai.control.translations", "blocked");

// ===============================================================
//** betterfox smooth scrolling
user_pref("apz.overscroll.enabled", true);
user_pref("general.smoothScroll", true);
user_pref("mousewheel.min_line_scroll_amount", 10);
user_pref("general.smoothScroll.mouseWheel.durationMinMS", 80);
user_pref("general.smoothScroll.currentVelocityWeighting", "0.15");
user_pref("general.smoothScroll.stopDecelerationWeighting", "0.6");

// Nova shit
user_pref("browser.nova.enabled", false);
user_pref("browser.aboutaddons.novaThemesPickerEnabled", false);
user_pref("browser.newtabpage.activity-stream.nova.enabled", false);
user_pref("browser.urlbar.quicksuggest.ampTopPickUseNovaIconSize", false);
user_pref("pdfjs.enableNova", false);
