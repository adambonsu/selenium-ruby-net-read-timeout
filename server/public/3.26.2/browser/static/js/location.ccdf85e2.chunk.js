"use strict";(self.webpackChunk_itv_fe_cassandra=self.webpackChunk_itv_fe_cassandra||[]).push([[9345],{46547:function(e,t,o){o.r(t),o.d(t,{default:function(){return x}});var n=o(64628),r=o(12642),a=o.n(r),c=o(6964),i=o(64350),l=o(23640),u=o(1012),s=o(67370),f=o(5073),m=o(51317),d=o(41508),y=(Symbol("TOGGLE_KEYBOARD"),Symbol("CLEAR_LOCATION")),p=Symbol("TOGGLE_SHOW_CONFIRMATION"),g=Symbol("TOGGLE_SHOW_KEYBOARD"),b=Symbol("UPDATE_LOCATION"),h=Symbol("TOGGLE_NOT_RECOGNISED"),v=o(89626),E=o.n(v),O=o(71509),w=o(69629),C=o(15837),L=function(e){var t=e.location,o=t?w.default:C.default,r=t?n.createElement(n.Fragment,null,"You have set your location to ",n.createElement("span",{className:"Location__area"},t)):n.createElement(n.Fragment,null,"You have not set a location");return n.createElement("div",{className:"Location__details--container"},n.createElement(O.ZP,{src:o,className:"Location__cp_icon--custom-size"}),n.createElement("span",{className:"Location__details--message"},r))};L.defaultProps={location:""},L.propTypes={location:E().string};var S=L,_=o(98830),T=o(96133),A=function(e){var t=e.toggleShowKeyboard,o=e.toggleShowConfirmation,r=e.location;return n.createElement(_.default,{id:"locationActions",className:"Location__button-container"},n.createElement(T.default,{className:"Location__button",onClick:t,backTo:"location-link"},"Update Location"),r&&n.createElement(T.default,{className:"Location__button",onClick:o,backTo:"location-link"},"Clear my Location"))};A.propTypes={toggleShowKeyboard:E().func.isRequired,toggleShowConfirmation:E().func.isRequired,location:E().string.isRequired};var N,R=A,k=o(72798);function P(e,t){var o=Object.keys(e);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(e);t&&(n=n.filter((function(t){return Object.getOwnPropertyDescriptor(e,t).enumerable}))),o.push.apply(o,n)}return o}function j(e){for(var t=1;t<arguments.length;t++){var o=null!=arguments[t]?arguments[t]:{};t%2?P(Object(o),!0).forEach((function(t){I(e,t,o[t])})):Object.getOwnPropertyDescriptors?Object.defineProperties(e,Object.getOwnPropertyDescriptors(o)):P(Object(o)).forEach((function(t){Object.defineProperty(e,t,Object.getOwnPropertyDescriptor(o,t))}))}return e}function I(e,t,o){return t in e?Object.defineProperty(e,t,{value:o,enumerable:!0,configurable:!0,writable:!0}):e[t]=o,e}var K=(I(N={},y,(function(e){var t=e.state;return(0,s.L_)(s.R8.BROADCASTER),j(j({},t),{},{location:"",clearLocationConfirmation:!1})})),I(N,p,(function(e){var t=e.state;return j(j({},t),{},{clearLocationConfirmation:!t.clearLocationConfirmation})})),I(N,g,(function(e){var t=e.state;return j(j({},t),{},{showKeyboard:!t.showKeyboard})})),I(N,b,(function(e){var t=e.state,o=e.payload.newLocation;return(0,s.Cj)({key:s.R8.BROADCASTER,value:o}),t.location!==o?j(j({},t),{},{location:o,showKeyboard:!1}):j(j({},t),{},{showKeyboard:!1})})),I(N,h,(function(e){var t=e.state;return j(j({},t),{},{postcodeNotRecognised:!t.postcodeNotRecognised})})),N),D=function(e,t){var o=t.type,n=t.payload;return o in K?K[o]({state:e,payload:n}):e},G=function(e){var t=e.dispatch;return{clearLocation:function(){return t({type:y})},toggleShowConfirmation:function(){return t({type:p})},toggleShowKeyboard:function(){return t({type:g})},updateLocation:function(e){var o=e.payload;return t({type:b,payload:o})},toggleNotRecognised:function(){return t({type:h})}}},B=o(42061),F=o(84011),H=o(25931),Y=function(e){var t=e.clearLocation,o=e.toggleShowConfirmation,r=(0,F.Hm)().setSubNavStealFocus,a=(0,n.useCallback)((function(){t(),r(!0)}),[t,r]),c=(0,n.useCallback)((function(){o(),r(!0)}),[r,o]);return n.createElement(B.ZP,null,n.createElement(H.ZP,{element:"h2"},"Are you sure you want to clear your location?"),n.createElement(B.p8,null,n.createElement(T.default,{onClick:a,backTo:c},"Yes, Clear my Location"),n.createElement(T.default,{onClick:c,backTo:c},"Cancel")))};Y.propTypes={toggleShowConfirmation:E().func.isRequired,clearLocation:E().func.isRequired};var Z=Y;function q(e,t,o){return t in e?Object.defineProperty(e,t,{value:o,enumerable:!0,configurable:!0,writable:!0}):e[t]=o,e}function U(e,t){return function(e){if(Array.isArray(e))return e}(e)||function(e,t){var o=null==e?null:"undefined"!==typeof Symbol&&e[Symbol.iterator]||e["@@iterator"];if(null==o)return;var n,r,a=[],c=!0,i=!1;try{for(o=o.call(e);!(c=(n=o.next()).done)&&(a.push(n.value),!t||a.length!==t);c=!0);}catch(l){i=!0,r=l}finally{try{c||null==o.return||o.return()}finally{if(i)throw r}}return a}(e,t)||function(e,t){if(!e)return;if("string"===typeof e)return M(e,t);var o=Object.prototype.toString.call(e).slice(8,-1);"Object"===o&&e.constructor&&(o=e.constructor.name);if("Map"===o||"Set"===o)return Array.from(e);if("Arguments"===o||/^(?:Ui|I)nt(?:8|16|32)(?:Clamped)?Array$/.test(o))return M(e,t)}(e,t)||function(){throw new TypeError("Invalid attempt to destructure non-iterable instance.\nIn order to be iterable, non-array objects must have a [Symbol.iterator]() method.")}()}function M(e,t){(null==t||t>e.length)&&(t=e.length);for(var o=0,n=new Array(t);o<t;o++)n[o]=e[o];return n}var x=function(){var e,t=U((0,n.useReducer)(D,{location:(0,s.su)(s.R8.BROADCASTER)||"",clearLocationConfirmation:!1,showKeyboard:!1,postcodeNotRecognised:!1}),2),o=t[0],r=t[1],y=(0,u.useBroadcaster)().updateBroadcaster,p=(0,d.useAppEventsContext)().state.closePlayerChecks,g=(0,n.useMemo)((function(){return G({dispatch:r})}),[]),b=g.toggleShowKeyboard,h=g.toggleShowConfirmation,v=g.updateLocation,E=g.clearLocation,O=o.clearLocationConfirmation,w=o.showKeyboard,C=o.location;(0,n.useEffect)((function(){p&&(w&&b(),O&&h())}),[w,p,b,h,O]),(0,n.useEffect)((function(){y(o.location||s.ce)}),[o.location,y]);var L=w?i.Z:k.Z;return n.createElement(L,{id:"locationPage",trackingPageType:f.c7.ACCOUNT,trackingPageId:f.c6.LOCATION,isFullscreen:!0},n.createElement("div",{className:a()("Location",(e={},q(e,l.grid,!w),q(e,l.gridColumn,!w),e))},n.createElement("div",{className:a()(l.gridItem,l.gridItemAlignCenter,q({},l.widthSevenTwelfths,!w))},w?n.createElement(m.Z,{updateLocation:v,backTo:b,onHide:b,onHideLabel:"Cancel"}):n.createElement(n.Fragment,null,n.createElement(c.PageHeader,{title:"Location",isLargerTitle:!0}),n.createElement(S,{location:C}),n.createElement("p",{className:"Location__disclaimer"},"Your postcode helps us show you the right programmes for your region. Please note\nthat we do not use your details for any marketing purposes. Some ITV shows are not available through\nITVX to viewers in Northern Ireland and to most viewers in Scotland."),n.createElement(R,{location:C,toggleShowKeyboard:b,toggleShowConfirmation:h})))),O&&n.createElement(Z,{clearLocation:E,toggleShowConfirmation:h}))}}}]);
//# sourceMappingURL=location.ccdf85e2.chunk.js.map