"use strict";(("undefined"!=typeof self?self:global).webpackChunkclient_web=("undefined"!=typeof self?self:global).webpackChunkclient_web||[]).push([[8459],{78459:(e,t,i)=>{i.r(t),i.d(t,{SNACKBAR_ID:()=>y,default:()=>S});var a=i(30758),r=i(91058),n=i(78158),o=i(12825),s=i(41331),c=i(95926),u=i(58923),l=i(19965),d=i(15231),f=i(74946);const g="dRD7dgAMZVRuTdelaf6B",m="sFr9SHK1H3ZYdz2_jWqY",h="AckhtqapSIpyTPpQGw7y";var v=i(86070);const p="dialog-robot";const b=()=>{const[e,t]=(0,a.useState)(!0);return e?(0,v.jsx)(l.j,{"data-testid":p,id:p,"aria-label":"Dialog robot",dialogTitle:s.Ru.get("user-fraud-verification.dialog-alert.title"),colorSet:"invertedLight",className:g,body:(0,v.jsx)(d.E,{as:"p",children:(i=s.Ru.get("user-fraud-verification.dialog-alert.describe"),r=e=>(0,v.jsx)(u.N_,{to:"/playlist/37i9dQZF1DWUcRrhkfhG22",className:m,children:e},e),i.split(/(\{0\}.*)\{1\}/).map((e=>e.startsWith("{0}")?r(e.split("{0}")[1]):e)))}),footer:(0,v.jsx)(f.$,{className:h,onClick:()=>t(!1),children:s.Ru.get("user-fraud-verification.dialog-alert.ok")})}):null;var i,r};var R=i(24630),_=i(62188),T=i(20769),I=i(93409),k=i(23647),x=i(35904);var N=i(87319);const y="snackbar-user-fraud-verification",S=({verificationId:e})=>{const t=(0,a.useRef)(Date.now()),[i,u]=(0,a.useState)(!1),[l,d]=(0,a.useState)(!1),[f,g]=(0,a.useState)(!1),m=(0,T.vh)(),h=(()=>{const e=(0,T.vh)(),{mutate:t}=(0,R.n)({mutationFn:e=>{const t=I.n.getInstance();return(0,k.s)(t,e)},onError:(t,i)=>{e.send((0,_.D)({id:i,method:"IN_APP_VERIFICATION_V0",error_message:t instanceof x.O?t.message:null,http_method:"put",http_path:`/verification/${i}`}))}});return t})(),{isTrustedRef:p,isTrustedFn:S}=(0,N.d)(),j=async(i,a)=>{const r=Date.now()-t.current,{type:n}=a;await S(a),m.send((0,o.Y)({id:e,method:"IN_APP_VERIFICATION_V0",action:i,interaction_details:{reaction_time:`${r}`,event_triggered:JSON.stringify({type:n,isTrusted:p.current})}})),e&&h(e)};return l?null:f?(0,v.jsx)(b,{}):i?(0,v.jsx)(r.qb,{"data-testid":y,className:(0,n.Ju)("announcement"),showSnackbar:!0,children:s.Ru.get("user-fraud-verification.snackbar.message")}):(0,v.jsx)(c.T,{"aria-label":s.Ru.get("user-fraud-verification.confirm-dialog.title"),titleText:s.Ru.get("user-fraud-verification.confirm-dialog.title"),descriptionText:s.Ru.get("user-fraud-verification.confirm-dialog.description"),onConfirm:e=>{j("human",e),u(!0)},onClose:e=>{j("robot",e),g(!0)},onOutside:e=>{j("robot",e),d(!0)},confirmText:s.Ru.get("user-fraud-verification.confirm-dialog.confirm"),confirmLabel:s.Ru.get("user-fraud-verification.confirm-dialog.label"),cancelText:s.Ru.get("user-fraud-verification.confirm-dialog.cancel")})}}}]);
//# sourceMappingURL=8459.js.map