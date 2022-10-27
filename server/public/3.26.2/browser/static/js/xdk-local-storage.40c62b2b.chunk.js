/*! For license information please see xdk-local-storage.40c62b2b.chunk.js.LICENSE.txt */
(self.webpackChunk_itv_fe_cassandra=self.webpackChunk_itv_fe_cassandra||[]).push([[4613,9969],{37054:function(t,n,e){t.exports=e(92558)},27145:function(t,n,e){t.exports=e(95311)},91269:function(t,n,e){t.exports=e(53269)},86604:function(t,n,e){t.exports=e(38650)},46319:function(t,n,e){t.exports=e(80477)},50393:function(t,n,e){t.exports=e(7308)},59697:function(t,n,e){t.exports=e(82459)},70379:function(t,n,e){t.exports=e(83584)},90203:function(t,n,e){t.exports=e(23903)},92275:function(t,n,e){t.exports=e(1093)},53219:function(t,n,e){"use strict";var r=e(62970);e(32408)(n,"__esModule",{value:!0}),n.default=void 0;var o=r(e(44023)),a=r(e(90222)),i=r(e(69490)),c=r(e(74069)),l=(0,o.default)({logTag:"[core/device/storage/Local]"}).debug,u=c.default.isBrowser(),s=c.default.root.localStorage,f=a.default.create([i.default],{},{init:function(){l(u?"LocalStorage wrapper enabled.":"LocalStorage wrapper will not function on non-browser")},set:function(t,n){u&&s.setItem(t,n)},get:function(t){return u?s.getItem(t):null},unset:function(t){u&&s.removeItem(t)},clear:function(){u&&s.clear()}});n.default=f},69490:function(t,n,e){"use strict";var r=e(62970);e(32408)(n,"__esModule",{value:!0}),n.default=void 0;var o=r(e(31518)).default.create("Storage",{set:["key","value"],get:["key"],unset:["key"],clear:[]});n.default=o},15311:function(t,n,e){"use strict";e.d(n,{Z:function(){return R}});var r=e(37054),o=e.n(r),a=e(59697),i=e.n(a),c=e(91269),l=e.n(c),u=e(51714),s=e(46319),f=e.n(s),p=e(27145),g=e.n(p),v=e(22934),d={};d[d.FUNCTION=0]="FUNCTION",d[d.CONSTRUCTOR=1]="CONSTRUCTOR",d[d.OBJECT=2]="OBJECT";var y,w=d.FUNCTION,h=d.CONSTRUCTOR,C=d.OBJECT,m={Devices:{Input:{KeyboardCapabilities:h,MouseCapabilities:h,TouchCapabilities:h},WiFi:{WiFiAdapter:C,WiFiAccessStatus:C}},Foundation:{Collections:{PropertySet:h},Uri:w},Globalization:{GeographicRegion:h},Media:{MediaExtensionManager:h,MediaPlaybackStatus:C,Protection:{MediaProtectionManager:h,PlayReady:{PlayReadyStatics:C}},SystemMediaTransportControls:{getForCurrentView:[w,"SystemMediaTransportControlsForCurrentView"]},SystemMediaTransportControlsButton:C},Networking:{Connectivity:{NetworkInformation:C},HostNameType:C},Security:{ExchangeActiveSyncProvisioning:{EasClientDeviceInformation:h}},Storage:{ApplicationData:{current:[C,"CurrentApplicationData"]},ApplicationDataCreateDisposition:C,Streams:{DataReader:C}},System:{Display:{DisplayRequest:h},Profile:{AnalyticsInfo:{versionInfo:{deviceFamily:C,deviceFamilyVersion:C}},HardwareIdentification:{getPackageSpecificToken:w},SystemIdentification:{getSystemIdForPublisher:w}}},UI:{WebUI:{WebUIApplication:C},Core:{SystemNavigationManager:C},ViewManagement:{ApplicationView:C,ApplicationViewBoundsMode:C,ApplicationViewScaling:C}}};function S(t,n){return function(t){if(Array.isArray(t))return t}(t)||function(t,n){var e=null==t?null:"undefined"!==typeof Symbol&&t[Symbol.iterator]||t["@@iterator"];if(null==e)return;var r,o,a=[],i=!0,c=!1;try{for(e=e.call(t);!(i=(r=e.next()).done)&&(a.push(r.value),!n||a.length!==n);i=!0);}catch(l){c=!0,o=l}finally{try{i||null==e.return||e.return()}finally{if(c)throw o}}return a}(t,n)||function(t,n){if(!t)return;if("string"===typeof t)return b(t,n);var e=Object.prototype.toString.call(t).slice(8,-1);"Object"===e&&t.constructor&&(e=t.constructor.name);if("Map"===e||"Set"===e)return Array.from(t);if("Arguments"===e||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(e))return b(t,n)}(t,n)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function b(t,n){(null==n||n>t.length)&&(n=t.length);for(var e=0,r=new Array(n);e<n;e++)r[e]=t[e];return r}function A(t,n,e){return A=O()?Reflect.construct.bind():function(t,n,e){var r=[null];r.push.apply(r,n);var o=new(Function.bind.apply(t,r));return e&&I(o,e.prototype),o},A.apply(null,arguments)}function O(){if("undefined"===typeof Reflect||!Reflect.construct)return!1;if(Reflect.construct.sham)return!1;if("function"===typeof Proxy)return!0;try{return Boolean.prototype.valueOf.call(Reflect.construct(Boolean,[],(function(){}))),!0}catch(t){return!1}}function I(t,n){return I=Object.setPrototypeOf?Object.setPrototypeOf.bind():function(t,n){return t.__proto__=n,t},I(t,n)}var T=v.core.isBrowser(),N=d.CONSTRUCTOR,_=d.FUNCTION,x=d.OBJECT,k={};function E(t,n){var e,r=S(n,2),a=r[0],c=r[1],s=function(t){var n,e=g()(n=[t]).call(n),r=f()(e).call(e,(function(t){return t===N})),o=f()(e).call(e,(function(t){return t===_})),a=f()(e).call(e,(function(t){return t===x}));return{isCtor:r,isFunc:o,isObj:a,drillDown:!r&&!o&&!a,newName:e[1]}}(c),p=s.newName,v=s.drillDown,d=(0,u.Z)(s,["newName","drillDown"]);v&&l()(e=i()(c)).call(e,o()(E).call(E,null,t[a]));var y=function(t,n,e){var r=e.isCtor,o=e.isFunc,a=e.isObj;return T&&t?a?function(){return t[n]}:o?function(){return t[n].apply(t,arguments)}:r?function(){for(var e=arguments.length,r=new Array(e),o=0;o<e;o++)r[o]=arguments[o];return A(t[n],r)}:void 0:function(){}}(t,a,d);k[a]=y,p&&(k[p]=y)}l()(y=i()(m)).call(y,o()(E).call(E,null,Windows));var R=k},49671:function(t,n,e){"use strict";var r=e(91269),o=e.n(r),a=e(50393),i=e.n(a),c=e(86604),l=e.n(c),u=e(20846),s=e(22934),f=e(32149),p=e(15311),g=(0,f.Z)({logTag:"[microsoft-uwp/BaseStorage]"}).logError,v="local",d=s.error.IllegalArgument,y=s.error.IllegalState,w=s.klass.create([s.IStorage],{LOCAL:"local",ROAMING:"roaming"},{_storage:null,init:function(t){var n;if(!t)throw new d("Cannot instantiate storage, 'type' is undefined.");if(!l()(n=[v,"roaming"]).call(n,t))throw new d("Cannot instantiate storage, unknown type: ".concat(t,"."));var e=p.Z.CurrentApplicationData();if(!e)throw new y("Unable to get device storage.");var r,o=(u.default.get(u.default.KEY.DEVICE_PACKAGES_INFO_KEY)||{}).containerName;if(!o)throw new d("Storage will not function without the \"property 'containerName' being defined for each device under the 'device-details' section in xdk.config.js.");(r=t===v?e.localSettings:e.roamingSettings).createContainer(o,p.Z.ApplicationDataCreateDisposition().Always).value,this._storage=i()(r.containers.lookup(o))},set:function(t,n){var e=this,r=n.match(/.{1,4095}/g);o()(r).call(r,(function(n,r){e._storage["".concat(t,"-%!&%!&%!&-").concat(r)]=n}))},get:function(t){var n=null,e=[];try{for(var r=0;r<1e3;){var o=this._storage["".concat(t,"-%!&%!&%!&-").concat(r++)];if(!o)break;e.push(o)}}catch(n){g("Error getting Storage key: ".concat(t,". Error: ").concat(n))}return e&&e.length>0&&(n=e.join("")),n},unset:function(t){try{for(var n=0;n<1e3;)this._storage.remove("".concat(t,"-%!&%!&%!&-").concat(n++))}catch(n){g("Error unsetting Storage key: ".concat(t,". Error: ").concat(n))}},clear:function(){this._storage.clear()}});n.Z=w},19969:function(t,n,e){"use strict";e.r(n);var r=e(22934),o=e(49671);n.default=r.klass.create(o.Z,{},{init:function(){this._super(o.Z.LOCAL)}})},32149:function(t,n,e){"use strict";var r=e(37054),o=e.n(r),a=e(20846),i=0,c=1,l=2,u=3,s=4,f=function(){};n.Z=function(t){var n,e,r,p,g,v=t.logTag,d=void 0===v?"[xdk-log]":v,y=t.transport,w=a.default.get("logging",{}),h=w.transport,C=w.level,m=void 0===C?2:C,S=y||h||console,b=m<=s?o()(n=S.error).call(n,S,d):f;return{error:b,logError:b,warn:m<=u?o()(e=S.warn).call(e,S,d):f,log:m<=l?o()(r=S.log).call(r,S,d):f,info:m<=c?o()(p=S.info).call(p,S,d):f,debug:m<=i?o()(g=S.debug).call(g,S,d):f}}},7130:function(t,n,e){e(48378),e(26555);var r=e(2152);t.exports=r("Array").flat},8032:function(t,n,e){e(95622),e(74761);var r=e(2152);t.exports=r("Array").values},76652:function(t,n,e){var r=e(89663),o=e(7130),a=Array.prototype;t.exports=function(t){var n=t.flat;return t===a||r(a,t)&&n===a.flat?o:n}},42955:function(t,n,e){"use strict";var r=e(54225),o=e(83062),a=e(60488),i=e(71011);t.exports=function t(n,e,c,l,u,s,f,p){for(var g,v=u,d=0,y=!!f&&i(f,p);d<l;)d in c&&(g=y?y(c[d],d,e):c[d],s>0&&r(g)?v=t(n,e,g,o(g),v,s-1)-1:(a(v+1),n[v]=g),v++),d++;return v}},48378:function(t,n,e){"use strict";var r=e(39705),o=e(42955),a=e(13822),i=e(83062),c=e(59159),l=e(55580);r({target:"Array",proto:!0},{flat:function(){var t=arguments.length?arguments[0]:void 0,n=a(this),e=i(n),r=l(n,0);return r.length=o(r,n,n,e,0,void 0===t?1:c(t)),r}})},26555:function(t,n,e){e(75470)("flat")},61098:function(t,n,e){var r=e(8032);t.exports=r},95311:function(t,n,e){var r=e(76652);t.exports=r},7308:function(t,n,e){e(88707);var r=e(30697),o=e(92541),a=e(89663),i=e(61098),c=Array.prototype,l={DOMTokenList:!0,NodeList:!0};t.exports=function(t){var n=t.values;return t===c||a(c,t)&&n===c.values||o(l,r(t))?i:n}},51714:function(t,n,e){"use strict";e.d(n,{Z:function(){return i}});var r=e(90203),o=e(70379),a=e(92275);function i(t,n){if(null==t)return{};var e,i,c=function(t,n){if(null==t)return{};var e,r,i={},c=a(t);for(r=0;r<c.length;r++)e=c[r],o(n).call(n,e)>=0||(i[e]=t[e]);return i}(t,n);if(r){var l=r(t);for(i=0;i<l.length;i++)e=l[i],o(n).call(n,e)>=0||Object.prototype.propertyIsEnumerable.call(t,e)&&(c[e]=t[e])}return c}}}]);
//# sourceMappingURL=xdk-local-storage.40c62b2b.chunk.js.map