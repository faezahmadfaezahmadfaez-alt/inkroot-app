import{createClient as ye}from"https://esm.sh/@supabase/supabase-js@2";(function(){const s=document.createElement("link").relList;if(s&&s.supports&&s.supports("modulepreload"))return;for(const i of document.querySelectorAll('link[rel="modulepreload"]'))o(i);new MutationObserver(i=>{for(const t of i)if(t.type==="childList")for(const g of t.addedNodes)g.tagName==="LINK"&&g.rel==="modulepreload"&&o(g)}).observe(document,{childList:!0,subtree:!0});function a(i){const t={};return i.integrity&&(t.integrity=i.integrity),i.referrerPolicy&&(t.referrerPolicy=i.referrerPolicy),i.crossOrigin==="use-credentials"?t.credentials="include":i.crossOrigin==="anonymous"?t.credentials="omit":t.credentials="same-origin",t}function o(i){if(i.ep)return;i.ep=!0;const t=a(i);fetch(i.href,t)}})();const ke="https://qgixtksetdonrnntlftd.supabase.co",_e="sb_publishable_uYOn9M4PkIHAPTYOecJSNg_OIZtHPFU";window.sb=ye(ke,_e);window.showToast=(e,s="info")=>{const a=document.getElementById("toast-container"),o=document.createElement("div"),i={info:"bg-surface border-border text-text",success:"bg-green-100 border-green-300 text-green-800",error:"bg-red-100 border-red-300 text-red-800"};o.className=`px-4 py-3 rounded shadow-lg border transform transition-all duration-300 translate-y-10 opacity-0 ${i[s]||i.info}`,o.textContent=e,a.appendChild(o),requestAnimationFrame(()=>{o.classList.remove("translate-y-10","opacity-0")}),setTimeout(()=>{o.classList.add("translate-y-10","opacity-0"),setTimeout(()=>o.remove(),300)},3e3)};window.showConfirmModal=(e,s,a)=>{const o=document.createElement("div");o.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[5000] p-4 backdrop-blur-sm",o.innerHTML=`
          <div class="bg-bg border border-border rounded-lg p-6 max-w-sm w-full shadow-xl">
            <h3 class="text-xl font-serif font-bold mb-4">${window.sanitize(e)}</h3>
            <p class="text-text/70 mb-6">${window.sanitize(s)}</p>
            <div class="flex gap-4">
              <button id="global-confirm-cancel" class="flex-1 py-2 border border-border rounded font-medium hover:bg-surface transition-colors">Cancel</button>
              <button id="global-confirm-ok" class="flex-1 py-2 bg-red-600 text-white rounded font-medium hover:bg-red-700 transition-colors">Confirm</button>
            </div>
          </div>
        `,document.body.appendChild(o),document.getElementById("global-confirm-cancel").onclick=()=>o.remove(),document.getElementById("global-confirm-ok").onclick=()=>{o.remove(),a&&a()}};window.showUserListModal=(e,s)=>{const a=document.createElement("div");a.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[5000] p-4 backdrop-blur-sm",a.innerHTML=`
          <div class="bg-surface border border-border rounded-xl shadow-2xl max-w-md w-full max-h-[80vh] flex flex-col transform transition-all scale-95 opacity-0" id="user-list-modal-content">
            <div class="p-4 border-b border-border flex justify-between items-center">
              <h3 class="text-xl font-serif font-bold">${window.sanitize(e)}</h3>
              <button id="close-user-list" class="text-text/40 hover:text-text text-2xl">&times;</button>
            </div>
            <div class="flex-1 overflow-y-auto p-2" id="user-list-container">
              ${s.length===0?`
                <div class="p-8 text-center text-text/40 italic">No users found.</div>
              `:s.map(t=>`
                <a href="#/profile/${t.username}" class="flex items-center gap-3 p-3 rounded-lg hover:bg-bg transition-colors group">
                  <div class="w-10 h-10 rounded-full bg-accent/10 border border-border overflow-hidden shrink-0">
                    ${t.avatar_url?`<img src="${t.avatar_url}" class="w-full h-full object-cover" referrerPolicy="no-referrer">`:`<div class="w-full h-full flex items-center justify-center text-accent font-bold">${t.username[0].toUpperCase()}</div>`}
                  </div>
                  <div class="flex-1 min-w-0">
                    <div class="font-bold text-sm truncate group-hover:text-accent transition-colors">${window.sanitize(t.display_name||t.username)}</div>
                    <div class="text-xs text-text/40 truncate">@${window.sanitize(t.username)}</div>
                  </div>
                  <div class="text-accent opacity-0 group-hover:opacity-100 transition-opacity">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path></svg>
                  </div>
                </a>
              `).join("")}
            </div>
          </div>
        `,document.body.appendChild(a);const o=document.getElementById("user-list-modal-content");requestAnimationFrame(()=>{o.classList.remove("scale-95","opacity-0"),o.classList.add("scale-100","opacity-100")});const i=document.getElementById("close-user-list");i.onclick=()=>a.remove(),a.onclick=t=>{t.target===a&&a.remove()},a.querySelectorAll("a").forEach(t=>{t.onclick=()=>a.remove()})};window.showShareModal=(e,s)=>{const a=`${window.location.origin}${window.location.pathname}#/profile/${s}`,o=`Check out ${window.sanitize(e)}'s writing desk on Inkroot!`,i=document.createElement("div");i.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[5000] p-4 backdrop-blur-sm",i.innerHTML=`
          <div class="bg-surface border border-border rounded-xl shadow-2xl max-w-sm w-full p-6 transform transition-all scale-95 opacity-0" id="share-modal-content">
            <div class="flex justify-between items-center mb-6">
              <h3 class="text-xl font-serif font-bold">Share Profile</h3>
              <button id="close-share" class="text-text/40 hover:text-text text-2xl">&times;</button>
            </div>
            
            <!-- Preview Card -->
            <div class="bg-bg border border-border rounded-lg p-4 mb-6 text-center">
              <div class="w-16 h-16 rounded-full bg-accent/10 border border-border mx-auto mb-3 flex items-center justify-center text-accent font-serif text-2xl font-bold">
                ${window.sanitize(e[0].toUpperCase())}
              </div>
              <h4 class="font-serif font-bold text-lg">${window.sanitize(e)}</h4>
              <p class="text-text/40 text-xs mb-4">@${window.sanitize(s)}</p>
              <div class="inline-block px-4 py-1 bg-accent/10 text-accent rounded-full text-xs font-bold uppercase tracking-widest">Inkroot Writer</div>
            </div>

            <!-- Social Links -->
            <div class="grid grid-cols-3 gap-4 mb-6">
              <a href="https://twitter.com/intent/tweet?text=${encodeURIComponent(o)}&url=${encodeURIComponent(a)}" target="_blank" rel="noopener noreferrer" class="flex flex-col items-center gap-2 group">
                <div class="w-12 h-12 rounded-full bg-[#1DA1F2]/10 flex items-center justify-center text-[#1DA1F2] group-hover:bg-[#1DA1F2] group-hover:text-white transition-all">
                  <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.84 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"/></svg>
                </div>
                <span class="text-[10px] uppercase font-bold tracking-tighter text-text/40">Twitter</span>
              </a>
              <a href="https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(a)}" target="_blank" rel="noopener noreferrer" class="flex flex-col items-center gap-2 group">
                <div class="w-12 h-12 rounded-full bg-[#1877F2]/10 flex items-center justify-center text-[#1877F2] group-hover:bg-[#1877F2] group-hover:text-white transition-all">
                  <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M24 12.073c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.99 4.388 10.954 10.125 11.854v-8.385H7.078v-3.47h3.047V9.43c0-3.007 1.792-4.669 4.533-4.669 1.312 0 2.686.235 2.686.235v2.953H15.83c-1.491 0-1.956.925-1.956 1.874v2.25h3.328l-.532 3.47h-2.796v8.385C19.612 23.027 24 18.062 24 12.073z"/></svg>
                </div>
                <span class="text-[10px] uppercase font-bold tracking-tighter text-text/40">Facebook</span>
              </a>
              <a href="https://wa.me/?text=${encodeURIComponent(o+" "+a)}" target="_blank" rel="noopener noreferrer" class="flex flex-col items-center gap-2 group">
                <div class="w-12 h-12 rounded-full bg-[#25D366]/10 flex items-center justify-center text-[#25D366] group-hover:bg-[#25D366] group-hover:text-white transition-all">
                  <svg class="w-5 h-5" fill="currentColor" viewBox="0 0 24 24"><path d="M17.472 14.382c-.297-.149-1.758-.867-2.03-.967-.273-.099-.471-.148-.67.15-.197.297-.767.966-.94 1.164-.173.199-.347.223-.644.075-.297-.15-1.255-.463-2.39-1.475-.883-.788-1.48-1.761-1.653-2.059-.173-.297-.018-.458.13-.606.134-.133.298-.347.446-.52.149-.174.198-.298.298-.497.099-.198.05-.371-.025-.52-.075-.149-.669-1.612-.916-2.207-.242-.579-.487-.5-.669-.51-.173-.008-.371-.01-.57-.01-.198 0-.52.074-.792.372-.272.297-1.04 1.016-1.04 2.479 0 1.462 1.065 2.875 1.213 3.074.149.198 2.096 3.2 5.077 4.487.709.306 1.262.489 1.694.625.712.227 1.36.195 1.871.118.571-.085 1.758-.719 2.006-1.413.248-.694.248-1.289.173-1.413-.074-.124-.272-.198-.57-.347m-5.421 7.403h-.004a9.87 9.87 0 01-5.031-1.378l-.361-.214-3.741.982.998-3.648-.235-.374a9.86 9.86 0 01-1.51-5.26c.001-5.45 4.436-9.884 9.888-9.884 2.64 0 5.122 1.03 6.988 2.898a9.825 9.825 0 012.893 6.994c-.003 5.45-4.437 9.884-9.885 9.884m8.413-18.297A11.815 11.815 0 0012.05 0C5.495 0 .16 5.335.157 11.892c0 2.096.547 4.142 1.588 5.945L0 24l6.335-1.662c1.72 1.03 3.703 1.574 5.711 1.574h.005c6.554 0 11.89-5.335 11.893-11.893a11.821 11.821 0 00-3.48-8.413z"/></svg>
                </div>
                <span class="text-[10px] uppercase font-bold tracking-tighter text-text/40">WhatsApp</span>
              </a>
            </div>

            <!-- Copy Link -->
            <div class="flex gap-2">
              <input type="text" value="${a}" readonly class="flex-1 bg-bg border border-border rounded px-3 py-2 text-xs text-text/60 outline-none">
              <button id="copy-share-link" class="bg-accent text-bg px-4 py-2 rounded text-xs font-bold hover:bg-accent/90 transition-colors">Copy</button>
            </div>
          </div>
        `,document.body.appendChild(i);const t=document.getElementById("share-modal-content");requestAnimationFrame(()=>{t.classList.remove("scale-95","opacity-0"),t.classList.add("scale-100","opacity-100")});const g=document.getElementById("close-share");g.onclick=()=>i.remove();const x=document.getElementById("copy-share-link");x.onclick=()=>{navigator.clipboard.writeText(a),x.textContent="Copied!",x.classList.replace("bg-accent","bg-green-600"),setTimeout(()=>{x.textContent="Copy",x.classList.replace("bg-green-600","bg-accent")},2e3)},i.onclick=d=>{d.target===i&&i.remove()}};const me=[{id:"classic",name:"Classic Print"},{id:"midnight",name:"Midnight Ink"},{id:"coffeehouse",name:"Coffeehouse"},{id:"paperback",name:"Paperback"},{id:"forest",name:"Forest"},{id:"lavender",name:"Lavender"},{id:"cyberpunk",name:"Cyberpunk"},{id:"royal",name:"Royal"},{id:"pride",name:"Pride"},{id:"gazette",name:"Gazette"}];let re=me.findIndex(e=>e.id===localStorage.getItem("inkroot-theme"));re===-1&&(re=0);const he=()=>{const e=me[re];document.documentElement.setAttribute("data-theme",e.id),localStorage.setItem("inkroot-theme",e.id),document.getElementById("theme-toggle-btn").textContent=`Theme: ${e.name}`};he();document.getElementById("theme-toggle-btn").addEventListener("click",()=>{re=(re+1)%me.length,he(),window.showToast(`Theme changed to ${me[re].name}`,"info")});const le=document.getElementById("auth-btn");le.classList.remove("hidden");window.sb.auth.onAuthStateChange((e,s)=>{s?(le.textContent="Sign Out",le.onclick=async()=>{await window.sb.auth.signOut(),window.showToast("Signed out successfully","success")}):(le.textContent="Sign In",le.onclick=()=>{window.showToast("Sign in functionality pending","info")})});window.lastHash=sessionStorage.getItem("inkroot-last-route")||"#/";!window.location.hash&&window.lastHash!=="#/"&&(console.log(`[Router] Restoring hash from storage: ${window.lastHash}`),window.location.hash=window.lastHash);window.loadRoute=()=>{};const ue=document.getElementById("sidebar"),pe=document.getElementById("sidebar-backdrop"),$e=document.getElementById("sidebar-toggle"),xe=document.getElementById("sidebar-close"),fe=()=>{window.innerWidth<768?(ue.classList.toggle("-translate-x-full"),pe.classList.toggle("hidden")):ue.classList.contains("md:hidden")?ue.classList.remove("md:hidden"):ue.classList.add("md:hidden")};$e.addEventListener("click",fe);xe&&xe.addEventListener("click",fe);pe&&pe.addEventListener("click",fe);window.loadRoute();window.renderAuthModal=()=>{const e=document.getElementById("auth-modal");e&&e.remove();const s=document.createElement("div");s.id="auth-modal",s.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[100] backdrop-blur-sm",s.innerHTML=`
        <div class="bg-surface border border-border rounded-lg shadow-xl w-full max-w-md overflow-hidden flex flex-col">
          <div class="flex border-b border-border">
            <button id="tab-signin" class="flex-1 py-4 font-serif font-semibold text-accent border-b-2 border-accent bg-bg/50">Sign In</button>
            <button id="tab-signup" class="flex-1 py-4 font-serif font-semibold text-text/60 hover:text-text hover:bg-bg/50 transition-colors">Sign Up</button>
          </div>
          
          <div class="p-6 relative">
            <button id="close-modal" class="absolute top-4 right-4 text-text/50 hover:text-text text-xl">&times;</button>
            
            <form id="auth-form" class="flex flex-col gap-4">
              <div id="signup-fields" class="hidden flex-col gap-4">
                <input type="text" id="display_name" placeholder="Display Name" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                <input type="text" id="username" placeholder="Username" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                <select id="role" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                  <option value="writer">Writer</option>
                  <option value="editor">Editor</option>
                  <option value="reader">Reader</option>
                </select>
                <input type="text" id="city" placeholder="City" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
              </div>
              
              <input type="email" id="email" placeholder="Email" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
              <input type="password" id="password" placeholder="Password" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
              
              <button type="submit" id="submit-btn" class="w-full py-3 mt-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Sign In</button>
            </form>
          </div>
        </div>
      `,document.body.appendChild(s);let a=!1;const o=document.getElementById("auth-form"),i=document.getElementById("tab-signin"),t=document.getElementById("tab-signup"),g=document.getElementById("signup-fields"),x=document.getElementById("submit-btn"),d=f=>{a=f,a?(t.classList.add("text-accent","border-b-2","border-accent","bg-bg/50"),t.classList.remove("text-text/60"),i.classList.remove("text-accent","border-b-2","border-accent","bg-bg/50"),i.classList.add("text-text/60"),g.classList.remove("hidden"),g.classList.add("flex"),x.textContent="Sign Up"):(i.classList.add("text-accent","border-b-2","border-accent","bg-bg/50"),i.classList.remove("text-text/60"),t.classList.remove("text-accent","border-b-2","border-accent","bg-bg/50"),t.classList.add("text-text/60"),g.classList.add("hidden"),g.classList.remove("flex"),x.textContent="Sign In")};i&&(i.onclick=()=>d(!1)),t&&(t.onclick=()=>d(!0));const b=document.getElementById("close-modal");b&&(b.onclick=()=>s.remove()),o.onsubmit=async f=>{f.preventDefault();const c=document.getElementById("email").value,p=document.getElementById("password").value;x.disabled=!0,x.textContent="Please wait...";try{if(a){const _=document.getElementById("display_name").value,n=document.getElementById("username").value,u=document.getElementById("role").value,v=document.getElementById("city").value,{data:k,error:C}=await window.sb.auth.signUp({email:c,password:p,options:{data:{display_name:_,username:n,role:u,city:v}}});if(C)throw C;if(k!=null&&k.user){const{error:S}=await window.sb.from("users").insert({id:k.user.id,username:n||c.split("@")[0],display_name:_||"New Writer",role:u||"user",city:v||""});S&&(console.error("Error inserting user profile:",S),window.showToast("Profile creation failed: "+S.message,"error"))}window.showToast("Signed up successfully! Please check your email.","success")}else{const{data:_,error:n}=await window.sb.auth.signInWithPassword({email:c,password:p});if(n)throw n;window.showToast("Signed in successfully!","success")}s.remove(),window.loadRoute()}catch(_){window.showToast(_.message,"error"),x.disabled=!1,x.textContent=a?"Sign Up":"Sign In"}}};window.renderProfile=async e=>{var o,i,t,g,x;const s=decodeURIComponent(e);console.log("renderProfile called with username:",s);const a=document.getElementById("app-content");a.innerHTML=`
        <div class="flex items-center justify-center h-full">
          <div class="animate-pulse text-accent font-serif text-xl">Loading profile...</div>
        </div>
      `;try{let d,b=!1;const{data:f}=await window.sb.auth.getSession(),c=(o=f==null?void 0:f.session)==null?void 0:o.user;if(!e&&c){let{data:l,error:E}=await window.sb.from("users").select("*").eq("id",c.id).maybeSingle();if(l){if(E)throw E}else{const{data:T,error:F}=await window.sb.from("users").insert({id:c.id,username:((i=c.user_metadata)==null?void 0:i.username)||c.email.split("@")[0],display_name:((t=c.user_metadata)==null?void 0:t.display_name)||"New Writer",role:((g=c.user_metadata)==null?void 0:g.role)||"user",city:((x=c.user_metadata)==null?void 0:x.city)||""}).select().single();if(F)throw F;l=T}d=l,b=!0}else if(s){let{data:l,error:E}=await window.sb.from("users").select("*");if(console.log("Query result for all users, searching for:",s.trim()),E)throw E;if(d=l.find(T=>T.username&&T.username.trim()===s.trim())||null,!d){console.log("Not found by username, trying ID lookup for:",s);const{data:T,error:F}=await window.sb.from("users").select("*").eq("id",s).maybeSingle();F&&console.error("Error during ID lookup:",F),d=T}if(!d){const{data:T,error:F}=await window.sb.from("users").select("username, display_name, id").limit(50);console.log("Debug: First 50 users in DB:",T)}b=(c==null?void 0:c.id)===(d==null?void 0:d.id)}else{a.innerHTML='<div class="p-8 text-center"><h2 class="text-2xl font-serif">Please sign in to view your profile</h2></div>';return}if(!d){console.log("User not found for username:",s),a.innerHTML=`<div class="p-8 text-center"><h2 class="text-2xl font-serif">User not found (username: ${window.sanitize(s)})</h2></div>`;return}const{count:p}=await window.sb.from("follows").select("*",{count:"exact",head:!0}).eq("following_id",d.id),{count:_}=await window.sb.from("follows").select("*",{count:"exact",head:!0}).eq("user_id",d.id);let n=!1,u=!1;if(c&&!b){const{data:l}=await window.sb.from("follows").select("id").eq("user_id",c.id).eq("following_id",d.id).maybeSingle();n=!!l;const{data:E,error:T}=await window.sb.from("follows").select("id").eq("user_id",d.id).eq("following_id",c.id).maybeSingle();T&&console.error("ownerFollowError:",T),console.log("ownerFollowData:",E,"user.id:",d.id,"currentUser.id:",c.id),u=!!E}const v=(d.display_name||d.username||"?").substring(0,2).toUpperCase(),{data:k,error:C}=await window.sb.from("works").select("*").eq("author_id",d.id).order("created_at",{ascending:!1}),S=(k==null?void 0:k.filter(l=>l.type==="showcase"))||[],h=(k==null?void 0:k.filter(l=>l.status==="published"&&l.type!=="showcase"))||[],w=(k==null?void 0:k.filter(l=>l.status==="draft"))||[],M=l=>({fiction:"bg-blue-100 text-blue-800 border-blue-200",poetry:"bg-purple-100 text-purple-800 border-purple-200",essay:"bg-green-100 text-green-800 border-green-200",journal:"bg-orange-100 text-orange-800 border-orange-200"})[l]||"bg-gray-100 text-gray-800 border-gray-200",y=l=>{const E=l.content.replace(/<[^>]*>?/gm,"").substring(0,150)+(l.content.length>150?"...":""),T=l.published_at||l.created_at,F=l.paper_texture&&l.paper_texture!=="default"?`texture-${l.paper_texture}`:"bg-surface",O=l.custom_font&&l.custom_font!=="default"?`font-${l.custom_font}`:"";return`
              <div class="${F} border border-border rounded-lg p-6 shadow-sm hover:shadow-md transition-shadow flex flex-col h-full">
                <div class="flex justify-between items-start mb-4">
                  <h3 class="font-serif font-bold text-xl text-text line-clamp-2">${window.sanitize(l.title)}</h3>
                  <span class="text-xs font-medium px-2 py-1 rounded-full border ${M(l.genre)} shrink-0 ml-2">${window.sanitize(l.genre)||"Uncategorized"}</span>
                </div>
                <p class="text-text/80 leading-relaxed mb-6 text-sm flex-grow ${O}">${window.sanitize(E)}</p>
                <div class="flex justify-between items-center mt-auto pt-4 border-t border-border/50">
                  <span class="text-xs text-text/50">${new Date(T).toLocaleDateString(void 0,{month:"short",day:"numeric",year:"numeric"})}</span>
                  <a href="#/work/${l.id}" class="text-accent font-medium hover:underline text-sm">Read More →</a>
                </div>
              </div>
            `},$=l=>`
              <div class="relative group aspect-square overflow-hidden rounded-lg bg-surface border border-border cursor-pointer">
                ${l.cover_url?`<img src="${l.cover_url}" alt="${window.sanitize(l.title)}" class="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110">`:`<div class="w-full h-full flex flex-col items-center justify-center p-4 text-center bg-accent/5">
                      <span class="text-4xl mb-2">📖</span>
                      <h3 class="font-serif font-bold text-sm line-clamp-2">${window.sanitize(l.title)}</h3>
                    </div>`}
                
                <!-- Instagram-style Overlay -->
                <div class="absolute inset-0 bg-black/40 opacity-0 group-hover:opacity-100 transition-opacity flex flex-col items-center justify-center gap-4 text-bg font-bold">
                  <div class="flex items-center gap-2" onclick="window.location.hash = '#/work/${l.id}'">
                    <span>👁️</span>
                    <span>View</span>
                  </div>
                  ${b?`
                    <div class="flex gap-4">
                      <button onclick="event.stopPropagation(); window.editShowcase('${l.id}')" class="bg-white/20 hover:bg-white/40 p-2 rounded-full transition-colors">✏️</button>
                      <button onclick="event.stopPropagation(); window.deleteShowcase('${l.id}')" class="bg-red-500/50 hover:bg-red-500/80 p-2 rounded-full transition-colors">🗑️</button>
                    </div>
                  `:""}
                </div>

                <!-- Purchase Link Badge -->
                ${l.purchase_url?`
                  <a href="${l.purchase_url}" target="_blank" onclick="event.stopPropagation()" class="absolute bottom-3 right-3 bg-accent text-bg p-2 rounded-full shadow-lg hover:scale-110 transition-transform" title="Buy Now">
                    🛒
                  </a>
                `:""}
              </div>
            `,j=l=>`
              <div class="bg-surface border border-border rounded-lg p-4 flex justify-between items-center hover:bg-black/5 transition-colors">
                <div>
                  <h3 class="font-serif font-bold text-lg text-text">${window.sanitize(l.title)||"Untitled Draft"}</h3>
                  <div class="flex gap-3 text-xs text-text/50 mt-1">
                    <span>Last edited: ${new Date(l.created_at).toLocaleDateString()}</span>
                    <span>•</span>
                    <span>${l.word_count||0} words</span>
                  </div>
                </div>
                <a href="#/write?id=${l.id}" class="px-4 py-2 bg-bg border border-border rounded text-sm font-medium hover:text-accent transition-colors">Continue Writing</a>
              </div>
            `;a.innerHTML=`
          <div class="max-w-5xl mx-auto p-8 lg:p-12">
            <!-- Hero Section -->
            <div class="flex flex-col md:flex-row gap-8 items-start mb-12">
              <div class="w-32 h-32 shrink-0 shadow-lg">
                ${window.renderAvatar(d,"w-full h-full")}
              </div>
              
              <div class="flex-1 w-full">
                <div class="flex flex-col md:flex-row md:items-center justify-between gap-4 mb-4 w-full">
                  <div>
                    <div class="flex items-center gap-3 flex-wrap">
                      <h1 class="text-4xl font-serif font-bold text-text">${window.renderUserName(d)}</h1>
                      ${(()=>{const l=new Date,E=new Date(l.getTime()-5*6e4),T=d.last_active_at&&new Date(d.last_active_at)>E;return`<div class="flex items-center gap-2 px-2.5 py-1 rounded-full bg-surface border border-border text-xs font-medium" title="${T?"Online now":"Offline"}">
                          <span class="w-2 h-2 rounded-full ${T?"bg-green-500 shadow-[0_0_5px_rgba(34,197,94,0.5)] animate-pulse":"bg-gray-400"}"></span>
                          <span class="${T?"text-green-600":"text-text/50"}">${T?"Online":"Offline"}</span>
                        </div>`})()}
                    </div>
                    <p class="text-text/60 mt-1">@${window.sanitize(d.username)||d.id.substring(0,8)} • ${window.sanitize(d.city)||"Unknown City"} • ${window.renderUserTier(d)}</p>
                  </div>
                  <div class="flex gap-3 shrink-0">
                    ${d.tip_url?`<a href="${d.tip_url}" target="_blank" class="px-4 py-2 border border-accent text-accent rounded hover:bg-accent/10 transition-colors font-medium">Tip Jar</a>`:""}
                    ${!b&&c?`
                      <button id="follow-btn" class="px-6 py-2 ${n?"bg-surface border border-border text-text":"bg-accent text-bg"} rounded font-medium hover:opacity-90 transition-all">
                        ${n?"Following":"Follow"}
                      </button>
                      <button id="message-btn" class="px-4 py-2 border border-border rounded hover:bg-black/5 transition-colors font-medium">Message</button>
                    `:""}
                    ${b?`
                      <button id="edit-profile-btn" class="px-4 py-2 border border-border rounded hover:bg-black/5 transition-colors font-medium">Edit Profile</button>
                    `:""}
                    <button id="share-profile-btn" class="p-2 border border-border rounded hover:bg-black/5 transition-colors" title="Share Profile">
                      <svg class="w-5 h-5 text-text/60" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M8.684 13.342C8.886 12.938 9 12.482 9 12c0-.482-.114-.938-.316-1.342m0 2.684a3 3 0 110-2.684m0 2.684l6.632 3.316m-6.632-6l6.632-3.316m0 0a3 3 0 105.367-2.684 3 3 0 00-5.367 2.684zm0 9.316a3 3 0 105.368 2.684 3 3 0 00-5.368-2.684z"></path></svg>
                    </button>
                  </div>
                </div>
                
                <p class="text-lg text-text/80 max-w-2xl mb-6 leading-relaxed">
                  ${window.sanitize(d.bio)||"No bio provided yet."}
                </p>
                
                <div class="flex flex-wrap gap-6 text-sm">
                  <div class="flex items-center gap-2">
                    <span class="font-bold text-accent text-lg">${window.renderLighthousePoints(d)}</span>
                    <span class="text-text/60 uppercase tracking-wider text-xs font-semibold">Lighthouse Pts</span>
                  </div>
                  <div class="flex items-center gap-2 cursor-pointer hover:opacity-80 transition-opacity" id="follower-stat">
                    <span class="font-bold text-text text-lg" id="follower-count">${p||0}</span>
                    <span class="text-text/60 uppercase tracking-wider text-xs font-semibold">Followers</span>
                  </div>
                  <div class="flex items-center gap-2 cursor-pointer hover:opacity-80 transition-opacity" id="following-stat">
                    <span class="font-bold text-text text-lg" id="following-count">${_||0}</span>
                    <span class="text-text/60 uppercase tracking-wider text-xs font-semibold">Following</span>
                  </div>
                  <!-- Spark Rewards -->
                  <div class="flex items-center gap-4 pl-4 border-l border-border/50">
                    <div class="flex items-center gap-1" title="Quills">
                      <span class="text-lg">🪶</span>
                      <span class="font-bold text-text">${d.quills||0}</span>
                    </div>
                    <div class="flex items-center gap-1" title="Ink Pens">
                      <span class="text-lg">✒️</span>
                      <span class="font-bold text-text">${d.ink_pens||0}</span>
                    </div>
                    <div class="flex items-center gap-1" title="Ball Points">
                      <span class="text-lg">🖊️</span>
                      <span class="font-bold text-text">${d.ball_points||0}</span>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Tabs -->
            <div class="border-b border-border mb-8 flex gap-8">
              <button id="tab-showcase" class="pb-4 font-serif text-xl font-semibold text-accent border-b-2 border-accent">Showcase <span class="text-sm font-sans text-text/50 ml-1">(${S.length})</span></button>
              <button id="tab-bookshelf" class="pb-4 font-serif text-xl font-semibold text-text/50 hover:text-text transition-colors">Bookshelf <span class="text-sm font-sans text-text/50 ml-1">(${h.length})</span></button>
              ${b?`<button id="tab-workbench" class="pb-4 font-serif text-xl font-semibold text-text/50 hover:text-text transition-colors">Workbench <span class="text-sm font-sans text-text/50 ml-1">(${w.length})</span></button>`:""}
            </div>

            <!-- Tab Content -->
            <div id="tab-content" class="min-h-[300px]">
              <!-- Showcase Content -->
              <div id="showcase-view" class="flex flex-col gap-6">
                ${b?`
                  <div class="flex justify-end">
                    <button id="add-showcase-btn" class="px-4 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity flex items-center gap-2">
                      <span>➕</span> Add Showcase Item
                    </button>
                  </div>
                `:""}
                <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-4">
                  ${S.length>0?S.map($).join(""):`<div class="p-8 border border-border border-dashed rounded-lg flex flex-col items-center justify-center text-center text-text/50 bg-surface/50 col-span-full">
                        <p>No showcased books for sale yet.</p>
                      </div>`}
                </div>
              </div>

              <!-- Bookshelf Content -->
              <div id="bookshelf-view" class="hidden grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                ${h.length>0?h.map(y).join(""):`<div class="p-8 border border-border border-dashed rounded-lg flex flex-col items-center justify-center text-center text-text/50 bg-surface/50 col-span-full">
                      <p>No published works yet.</p>
                    </div>`}
              </div>
              
              <!-- Workbench Content -->
              ${b?`
              <div id="workbench-view" class="hidden flex-col gap-4">
                <div class="flex justify-end mb-2">
                  <a href="#/write" class="px-4 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Start a new draft</a>
                </div>
                ${w.length>0?w.map(j).join(""):`<div class="p-8 border border-border border-dashed rounded-lg flex flex-col items-center justify-center text-center text-text/50 bg-surface/50">
                      <p>No works in progress.</p>
                    </div>`}
              </div>
              `:""}
            </div>

            <!-- Edit Profile Modal -->
            ${b?`
            <div id="edit-profile-modal" class="fixed inset-0 bg-black/50 z-50 hidden flex items-center justify-center p-4">
              <div class="bg-bg rounded-lg shadow-xl w-full max-w-md overflow-hidden flex flex-col max-h-[90vh]">
                <div class="p-6 border-b border-border flex justify-between items-center shrink-0">
                  <h2 class="text-2xl font-serif font-bold text-text">Edit Profile</h2>
                  <button id="close-edit-modal" class="text-text/50 hover:text-text text-2xl">&times;</button>
                </div>
                <div class="p-6 overflow-y-auto">
                  <form id="edit-profile-form" class="flex flex-col gap-4">
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Display Name</label>
                      <input type="text" id="edit-display-name" class="w-full p-2 border border-border rounded bg-surface text-text" value="${d.display_name||""}">
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Bio</label>
                      <textarea id="edit-bio" rows="3" class="w-full p-2 border border-border rounded bg-surface text-text">${d.bio||""}</textarea>
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">City</label>
                      <input type="text" id="edit-city" class="w-full p-2 border border-border rounded bg-surface text-text" value="${d.city||""}">
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Profile Picture</label>
                      <div class="flex items-center gap-4">
                        <div class="w-12 h-12 rounded-full bg-surface border border-border overflow-hidden shrink-0 flex items-center justify-center text-text/50 text-xs">
                          ${d.avatar_url?`<img id="edit-avatar-preview" src="${d.avatar_url}" class="w-full h-full object-cover" />`:'<span id="edit-avatar-placeholder">No img</span><img id="edit-avatar-preview" src="" class="w-full h-full object-cover hidden" />'}
                        </div>
                        <input type="file" id="edit-avatar-file" accept="image/*" class="w-full text-sm text-text/80 file:mr-4 file:py-2 file:px-4 file:rounded file:border-0 file:text-sm file:font-semibold file:bg-accent file:text-bg hover:file:opacity-90 cursor-pointer">
                      </div>
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Tip URL</label>
                      <input type="url" id="edit-tip-url" class="w-full p-2 border border-border rounded bg-surface text-text" value="${d.tip_url||""}">
                    </div>
                  </form>
                </div>
                <div class="p-6 border-t border-border flex justify-end gap-3 shrink-0">
                  <button id="cancel-edit-btn" class="px-4 py-2 border border-border rounded text-text hover:bg-surface transition-colors">Cancel</button>
                  <button id="save-edit-btn" class="px-4 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Save Changes</button>
                </div>
              </div>
            </div>
            `:""}

            <!-- Showcase Modal -->
            ${b?`
            <div id="showcase-modal" class="fixed inset-0 bg-black/50 z-50 hidden flex items-center justify-center p-4">
              <div class="bg-bg rounded-lg shadow-xl w-full max-w-md overflow-hidden flex flex-col max-h-[90vh]">
                <div class="p-6 border-b border-border flex justify-between items-center shrink-0">
                  <h2 id="showcase-modal-title" class="text-2xl font-serif font-bold text-text">Add Showcase Item</h2>
                  <button id="close-showcase-modal" class="text-text/50 hover:text-text text-2xl">&times;</button>
                </div>
                <div class="p-6 overflow-y-auto">
                  <form id="showcase-form" class="flex flex-col gap-4">
                    <input type="hidden" id="showcase-id">
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Book Title</label>
                      <input type="text" id="showcase-title" class="w-full p-2 border border-border rounded bg-surface text-text" required>
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Cover Image URL</label>
                      <input type="url" id="showcase-cover-url" class="w-full p-2 border border-border rounded bg-surface text-text" placeholder="https://...">
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Purchase URL</label>
                      <input type="url" id="showcase-purchase-url" class="w-full p-2 border border-border rounded bg-surface text-text" placeholder="https://..." required>
                    </div>
                    <div>
                      <label class="block text-sm font-medium text-text/80 mb-1">Short Description / Blurb</label>
                      <textarea id="showcase-content" rows="4" class="w-full p-2 border border-border rounded bg-surface text-text" placeholder="Tell readers about your book..."></textarea>
                    </div>
                  </form>
                </div>
                <div class="p-6 border-t border-border flex justify-end gap-3 shrink-0">
                  <button id="cancel-showcase-btn" class="px-4 py-2 border border-border rounded text-text hover:bg-surface transition-colors">Cancel</button>
                  <button id="save-showcase-btn" class="px-4 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Save Item</button>
                </div>
              </div>
            </div>
            `:""}
          </div>
        `;const A=document.getElementById("follow-btn");A&&c&&(A.onclick=async()=>{var l,E;A.disabled=!0;try{n?(await window.sb.from("follows").delete().eq("user_id",c.id).eq("following_id",d.id),n=!1,A.textContent="Follow",A.className="px-6 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-all",document.getElementById("follower-count").textContent=parseInt(document.getElementById("follower-count").textContent)-1):(await window.sb.from("follows").insert({user_id:c.id,following_id:d.id}),await window.sb.from("notifications").insert({user_id:d.id,type:"follow",content:`${((l=c.user_metadata)==null?void 0:l.display_name)||c.email} started following you!`,link:`#/profile/${((E=c.user_metadata)==null?void 0:E.username)||c.id}`}),n=!0,A.textContent="Following",A.className="px-6 py-2 bg-surface border border-border text-text rounded font-medium hover:opacity-90 transition-all",document.getElementById("follower-count").textContent=parseInt(document.getElementById("follower-count").textContent)+1)}catch(T){window.handleError(T,"Failed to update follow status")}A.disabled=!1});const I=document.getElementById("message-btn");I&&c&&(I.onclick=async()=>{if(!u&&!n){window.showToast("You can only message users if one of you follows the other.","error");return}I.disabled=!0;try{const{data:l}=await window.sb.from("conversations").select("id").or(`and(initiator_id.eq.${c.id},receiver_id.eq.${d.id}),and(initiator_id.eq.${d.id},receiver_id.eq.${c.id})`).maybeSingle();if(l)window.location.hash=`#/messages/${l.id}`;else{const{data:E,error:T}=await window.sb.from("conversations").insert({initiator_id:c.id,receiver_id:d.id,status:"pending"}).select().single();if(T)throw T;window.location.hash=`#/messages/${E.id}`}}catch(l){window.handleError(l,"Failed to start conversation."),I.disabled=!1}});const P=document.getElementById("tab-showcase"),H=document.getElementById("tab-bookshelf"),U=document.getElementById("tab-workbench"),V=document.getElementById("showcase-view"),z=document.getElementById("bookshelf-view"),D=document.getElementById("workbench-view"),R=l=>{[P,H,U].forEach(F=>{F&&(F.classList.remove("text-accent","border-b-2","border-accent"),F.classList.add("text-text/50"))}),[V,z,D].forEach(F=>{F&&F.classList.add("hidden")});const E=document.getElementById(`tab-${l}`),T=document.getElementById(`${l}-view`);E&&(E.classList.add("text-accent","border-b-2","border-accent"),E.classList.remove("text-text/50")),T&&(T.classList.remove("hidden"),l==="workbench"&&T.classList.add("flex"))};P&&(P.onclick=()=>R("showcase")),H&&(H.onclick=()=>R("bookshelf")),U&&(U.onclick=()=>R("workbench"));const q=document.getElementById("showcase-modal"),N=document.getElementById("add-showcase-btn"),W=document.getElementById("close-showcase-modal"),G=document.getElementById("cancel-showcase-btn"),Y=document.getElementById("save-showcase-btn"),K=document.getElementById("showcase-form");if(b&&q){const l=(T=null)=>{q.classList.remove("hidden"),sessionStorage.setItem("inkroot-showcase-modal-open","true"),document.getElementById("showcase-modal-title").textContent=T?"Edit Showcase Item":"Add Showcase Item",document.getElementById("showcase-id").value=T?T.id:"",T?(document.getElementById("showcase-title").value=T.title,document.getElementById("showcase-cover-url").value=T.cover_url||"",document.getElementById("showcase-purchase-url").value=T.purchase_url||"",document.getElementById("showcase-content").value=T.content||""):(document.getElementById("showcase-title").value=localStorage.getItem("inkroot-showcase-title")||"",document.getElementById("showcase-cover-url").value=localStorage.getItem("inkroot-showcase-cover-url")||"",document.getElementById("showcase-purchase-url").value=localStorage.getItem("inkroot-showcase-purchase-url")||"",document.getElementById("showcase-content").value=localStorage.getItem("inkroot-showcase-content")||"")},E=()=>{q.classList.add("hidden"),sessionStorage.removeItem("inkroot-showcase-modal-open"),K.reset(),localStorage.removeItem("inkroot-showcase-title"),localStorage.removeItem("inkroot-showcase-cover-url"),localStorage.removeItem("inkroot-showcase-purchase-url"),localStorage.removeItem("inkroot-showcase-content")};K.addEventListener("input",()=>{localStorage.setItem("inkroot-showcase-title",document.getElementById("showcase-title").value),localStorage.setItem("inkroot-showcase-cover-url",document.getElementById("showcase-cover-url").value),localStorage.setItem("inkroot-showcase-purchase-url",document.getElementById("showcase-purchase-url").value),localStorage.setItem("inkroot-showcase-content",document.getElementById("showcase-content").value)}),N&&(N.onclick=()=>l()),W&&(W.onclick=E),G&&(G.onclick=E),sessionStorage.getItem("inkroot-showcase-modal-open")==="true"&&l(),Y.onclick=async()=>{const T=document.getElementById("showcase-id").value,F=document.getElementById("showcase-title").value.trim(),O=document.getElementById("showcase-cover-url").value.trim(),Q=document.getElementById("showcase-purchase-url").value.trim(),X=document.getElementById("showcase-content").value.trim();if(!F||!Q)return window.showToast("Title and Purchase URL are required","error");Y.disabled=!0,Y.textContent="Saving...";try{const Z={title:F,content:X,cover_url:O||null,purchase_url:Q||null,type:"showcase",status:"published",author_id:c.id,genre:"Other",word_count:0};await window.publishWork(Z,T||null),localStorage.removeItem("inkroot-showcase-title"),localStorage.removeItem("inkroot-showcase-cover-url"),localStorage.removeItem("inkroot-showcase-purchase-url"),localStorage.removeItem("inkroot-showcase-content"),window.showToast("Showcase item saved!","success"),E(),window.renderProfile(d.username)}catch(Z){window.showToast(Z.message,"error")}finally{Y.disabled=!1,Y.textContent="Save Item"}},window.editShowcase=async T=>{const F=S.find(O=>O.id===T);F&&l(F)},window.deleteShowcase=async T=>{window.showConfirmModal("Remove Showcase Item","Are you sure you want to remove this showcase item?",async()=>{try{await window.sb.from("works").delete().eq("id",T),window.showToast("Item removed","success"),window.renderProfile(d.username)}catch{window.showToast("Failed to delete","error")}})}}const te=document.getElementById("edit-profile-btn"),ne=document.getElementById("edit-profile-modal"),ae=document.getElementById("close-edit-modal"),ie=document.getElementById("cancel-edit-btn"),se=document.getElementById("save-edit-btn");if(te&&ne){const l=()=>ne.classList.add("hidden");te.onclick=()=>ne.classList.remove("hidden"),ae&&(ae.onclick=l),ie&&(ie.onclick=l);const E=document.getElementById("edit-avatar-file"),T=document.getElementById("edit-avatar-preview"),F=document.getElementById("edit-avatar-placeholder");E&&(E.onchange=O=>{const Q=O.target.files[0];if(Q){const X=new FileReader;X.onload=Z=>{T.src=Z.target.result,T.classList.remove("hidden"),F&&F.classList.add("hidden")},X.readAsDataURL(Q)}}),se.onclick=async()=>{se.disabled=!0,se.textContent="Saving...";try{let O=d.avatar_url;const Q=E==null?void 0:E.files[0];if(Q){se.textContent="Uploading image...";const ce=Q.name.split(".").pop(),ee=`${`${d.id}-${Math.random().toString(36).substring(2)}.${ce}`}`,{error:J}=await window.sb.storage.from("avatars").upload(ee,Q);if(J)throw J;const{data:ve}=window.sb.storage.from("avatars").getPublicUrl(ee);O=ve.publicUrl}se.textContent="Saving profile...";const X={display_name:document.getElementById("edit-display-name").value,bio:document.getElementById("edit-bio").value,city:document.getElementById("edit-city").value,avatar_url:O,tip_url:document.getElementById("edit-tip-url").value},{error:Z}=await window.sb.from("users").update(X).eq("id",d.id);if(Z)throw Z;window.showToast("Profile updated successfully","success"),l(),window.renderProfile(e)}catch(O){window.showToast("Failed to update profile: "+O.message,"error"),se.disabled=!1,se.textContent="Save Changes"}}}const r=document.getElementById("share-profile-btn");r&&(r.onclick=()=>{window.showShareModal(d.display_name||d.username,d.username)});const m=document.getElementById("follower-stat"),B=document.getElementById("following-stat");m&&(m.onclick=async()=>{const{data:l,error:E}=await window.sb.from("follows").select("user:user_id(username, display_name, avatar_url)").eq("following_id",d.id);if(E)window.showToast("Failed to fetch followers","error");else{const T=l.map(F=>F.user).filter(F=>F);window.showUserListModal("Followers",T)}}),B&&(B.onclick=async()=>{const{data:l,error:E}=await window.sb.from("follows").select("following:following_id(username, display_name, avatar_url)").eq("user_id",d.id);if(E)window.showToast("Failed to fetch following","error");else{const T=l.map(F=>F.following).filter(F=>F);window.showUserListModal("Following",T)}}),H&&(H.onclick=()=>{H&&(H.classList.add("text-accent","border-b-2","border-accent"),H.classList.remove("text-text/50")),U&&(U.classList.remove("text-accent","border-b-2","border-accent"),U.classList.add("text-text/50")),z&&(z.classList.remove("hidden"),z.classList.add("grid")),D&&(D.classList.add("hidden"),D.classList.remove("flex"))}),U&&(U.onclick=()=>{U.classList.add("text-accent","border-b-2","border-accent"),U.classList.remove("text-text/50"),H&&(H.classList.remove("text-accent","border-b-2","border-accent"),H.classList.add("text-text/50")),D&&(D.classList.remove("hidden"),D.classList.add("flex")),z&&(z.classList.add("hidden"),z.classList.remove("grid"))})}catch(d){console.error(d),a.innerHTML=`<div class="p-8 text-center text-red-500">Error loading profile: ${d.message}</div>`}};window.renderAbout=()=>{const e=document.getElementById("app-content");e.innerHTML=`
          <div class="max-w-4xl mx-auto p-8 md:p-16">
            <div class="grid md:grid-cols-2 gap-12 items-center">
              <div class="space-y-6">
                <h2 class="text-5xl font-serif font-bold text-text">About Inkroot</h2>
                <p class="text-lg text-text/80 leading-relaxed">
                  Inkroot was born from a simple belief: every story deserves a home, and every writer deserves a sanctuary. It is a curated space designed to ignite creativity, foster meaningful connections, and celebrate the art of storytelling in all its forms.
                </p>
                <p class="text-lg text-text/80 leading-relaxed">
                  Whether you are crafting your first chapter, exploring new genres, or seeking constructive feedback, Inkroot provides the tools and community to help your writing flourish.
                </p>
              </div>
              <div class="relative">
                <div class="absolute inset-0 bg-accent/20 rounded-2xl transform rotate-3"></div>
                <img src="/about-faez.jpg" alt="Faez Ahmad" class="relative rounded-2xl shadow-2xl w-full object-cover aspect-[3/4]" referrerPolicy="no-referrer">
              </div>
            </div>

            <div class="mt-16 pt-16 border-t border-border">
              <h3 class="text-3xl font-serif font-bold mb-8 text-center">Published Work</h3>
              <div class="bg-surface border border-border rounded-2xl p-6 md:p-8 shadow-sm flex flex-col md:flex-row gap-8 items-center max-w-3xl mx-auto group hover:shadow-md transition-shadow">
                <div class="w-64 shrink-0 shadow-xl rounded-lg overflow-hidden border border-border transform group-hover:scale-105 transition-transform duration-500">
                  <img src="https://i0.wp.com/decipherbookstore.com/wp-content/uploads/2026/01/We-Were-Beautiful-When-We-Died-by-Faeez-Ahmed.png?fit=1500%2C1150&ssl=1" alt="We Were Beautiful When We Died" class="w-full h-full object-cover" referrerPolicy="no-referrer" onerror="this.src='https://picsum.photos/seed/book/400/600'">
                </div>
                <div class="flex-1 space-y-4 text-center md:text-left">
                  <div class="inline-block px-3 py-1 bg-accent/10 text-accent rounded-full text-xs font-bold uppercase tracking-widest mb-2">Featured Novel</div>
                  <h4 class="text-3xl font-serif font-bold text-text">We Were Beautiful When We Died</h4>
                  <p class="text-sm text-text/60 italic">Published by Decipher Bookstore</p>
                  <p class="text-text/80 leading-relaxed italic">
                    "They tried to bury a monster. They didn’t expect it to be beautiful when it died."
                  </p>
                  <p class="text-sm text-text/70">
                    A haunting exploration of memory, loss, and the hidden beauty in the things we leave behind.
                  </p>
                  <div class="pt-4">
                    <a href="https://decipherbookstore.com/product/we-were-beautiful-when-we-died-by-faeez-ahmed/" target="_blank" class="inline-block px-8 py-3 bg-accent text-bg rounded-full font-bold hover:opacity-90 transition-all hover:shadow-lg">Get Your Copy</a>
                  </div>
                </div>
              </div>
            </div>

            <div class="mt-16 pt-16 border-t border-border">
              <h3 class="text-3xl font-serif font-bold mb-8 text-center">The Curator</h3>
              <div class="max-w-2xl mx-auto text-center space-y-4">
                <p class="text-lg text-text/80 leading-relaxed">
                  Curated by <strong>Faez Ahmad</strong>, Inkroot is more than just a platform—it's a labor of love dedicated to the written word. Faez envisioned a space that bridges the gap between solitary writing and community engagement, creating an environment where writers can grow together.
                </p>
                <p class="text-lg text-text/80 leading-relaxed">
                  When not curating stories, you might find him lost in nostalgia, exploring new narratives, or simply enjoying the quiet moments that inspire the next great story.
                </p>
              </div>
            </div>
          </div>
        `};window.renderRules=()=>{const e=document.getElementById("app-content");e.innerHTML=`
          <div class="max-w-3xl mx-auto p-12">
            <h2 class="text-4xl font-serif font-bold mb-8">Rules & Regulations</h2>
            <div class="space-y-6">
              <section>
                <h3 class="text-2xl font-serif font-bold mb-3">Community Rules</h3>
                <ul class="list-disc list-inside text-text/80 space-y-3">
                  <li><strong>Respect & Safety:</strong> Inkroot is a safe space for all storytellers. Harassment, bullying, flirting, or any form of inappropriate behavior will not be tolerated. Keep all discussions focused on writing and community-related topics.</li>
                  <li><strong>Zero Tolerance:</strong> We maintain a zero-tolerance policy for inappropriate conduct. The administration reserves the right to immediately ban any user found violating these rules. This includes the permanent removal of their profile, all associated posts, and comments.</li>
                  <li><strong>Originality:</strong> No plagiarism. All work must be original.</li>
                  <li><strong>Appropriateness:</strong> Keep content appropriate for the community.</li>
                </ul>
              </section>
              <section>
                <h3 class="text-2xl font-serif font-bold mb-3">Instruction Manual</h3>
                <div class="text-text/80 space-y-4">
                  <p>Welcome to Inkroot, your sanctuary for the written word. This guide will help you navigate the platform and make the most of your creative journey.</p>
                  
                  <h4 class="font-bold">Navigation Guide</h4>
                  <ul class="list-disc list-inside space-y-1">
                    <li><strong>Home:</strong> Your landing page. Here you can find the "Featured Beacon" and the latest active Spark Challenge.</li>
                    <li><strong>Discover:</strong> Explore the main feed of stories. Filter by Global, Local (your city), Following, or browse all Writers.</li>
                    <li><strong>Write:</strong> Your creative studio. Draft, edit, and publish your work. Customize with Genre, Type (Standalone/Series), and Feedback Mode.</li>
                    <li><strong>Writers Map:</strong> Visualize and add literary locations.</li>
                    <li><strong>Events:</strong> Stay updated on literary gatherings and post your own.</li>
                    <li><strong>Wallet:</strong> Manage your Ink balance, Spark Pass, tokens (Quills, Ink Pens, Ball Points), and store purchases.</li>
                    <li><strong>Spark Challenge:</strong> Participate in weekly writing prompts. Choose from Sprint, Flow, or Marathon levels.</li>
                    <li><strong>Spark Board:</strong> View the leaderboard for Spark Challenges.</li>
                    <li><strong>Admin:</strong> Restricted area for site configuration.</li>
                    <li><strong>My Desk (Profile):</strong> Your personal hub for works, stats (Lighthouse Points), and settings.</li>
                    <li><strong>About Me:</strong> Learn about Inkroot's vision.</li>
                  </ul>

                  <h4 class="font-bold">Lighthouse Points</h4>
                  <p>Lighthouse Points measure your influence and activity. Earn them by Sharing (15 pts), Spark Challenges (10 pts), Exchanges (25 pts), and Sprints (5 pts). Higher points help you rank higher in the Writers directory.</p>
                </div>
              </section>
            </div>
          </div>
        `};const be=document.getElementById("auth-btn");let de=null;window.sb.auth.onAuthStateChange((e,s)=>{if(s){if(window.setupGlobalMessageListener(),be.textContent="Sign Out",be.onclick=async()=>{await window.sb.auth.signOut(),window.showToast("Signed out successfully","success"),window.loadRoute()},!de){const a=async()=>{try{await window.sb.from("users").update({last_active_at:new Date().toISOString()}).eq("id",s.user.id)}catch(o){console.error("Presence update failed (column might be missing):",o)}};a(),de=setInterval(a,6e4)}e==="SIGNED_IN"&&window.loadRoute()}else de&&(clearInterval(de),de=null),be.textContent="Sign In",be.onclick=()=>{window.renderAuthModal()},e==="SIGNED_OUT"&&window.loadRoute()});window.loadRoute();const we=e=>({fiction:"bg-blue-100 text-blue-800","non-fiction":"bg-green-100 text-green-800",poetry:"bg-purple-100 text-purple-800",essay:"bg-yellow-100 text-yellow-800",journalism:"bg-red-100 text-red-800",memoir:"bg-pink-100 text-pink-800"})[e==null?void 0:e.toLowerCase()]||"bg-gray-100 text-gray-800";window.renderHome=async()=>{var s,a,o,i,t,g,x,d,b;const e=document.getElementById("app-content");e.innerHTML='<div class="p-12 text-center"><div class="animate-pulse text-accent">Curating your home page...</div></div>';try{const{data:f}=await window.sb.from("site_config").select("*"),c=(s=f==null?void 0:f.find(w=>w.key==="beacon_work_id"))==null?void 0:s.value,_=(((a=f==null?void 0:f.find(w=>w.key==="featured_work_ids"))==null?void 0:a.value)||"").split(",").filter(w=>w),n=((o=f==null?void 0:f.find(w=>w.key==="site_announcement"))==null?void 0:o.value)||"";let u=null,v=[];if(c){const{data:w}=await window.sb.from("works").select("*, author:author_id(display_name, username, avatar_url)").eq("id",c).single();u=w}if(_.length>0){const{data:w}=await window.sb.from("works").select("*, author:author_id(display_name, username, avatar_url)").in("id",_).eq("status","published");v=w||[]}if(v.length<6){const{data:w}=await window.sb.from("works").select("*, author:author_id(display_name, username, avatar_url)").eq("status","published").order("published_at",{ascending:!1}).limit(20);if(w&&w.length>0){const M=w.map(P=>P.id),[{data:y},{data:$}]=await Promise.all([window.sb.from("likes").select("work_id").in("work_id",M),window.sb.from("comments").select("work_id").in("work_id",M)]),j={};y==null||y.forEach(P=>{j[P.work_id]=(j[P.work_id]||0)+1});const A={};$==null||$.forEach(P=>{A[P.work_id]=(A[P.work_id]||0)+1});const I=w.map(P=>{const H=j[P.id]||0,U=A[P.id]||0;return{...P,engagement:H+U}});I.sort((P,H)=>H.engagement-P.engagement);for(const P of I){if(v.length>=6)break;!v.find(H=>H.id===P.id)&&(!u||u.id!==P.id)&&v.push(P)}}}if(!u&&v.length===0){const{data:w}=await window.sb.from("works").select("*, author:author_id(display_name, username, avatar_url)").eq("status","published").order("published_at",{ascending:!1}).limit(5);w&&w.length>0&&(u=w[0],v=w.slice(1))}if(!u&&v.length===0){e.innerHTML=`
              <div class="max-w-4xl mx-auto p-12 text-center">
                <h1 class="text-5xl font-serif font-bold mb-6">Inkroot</h1>
                <p class="text-xl text-text/60 italic">The ink is still drying. Check back soon for curated stories.</p>
                <a href="#/discover" class="inline-block mt-8 px-8 py-3 bg-accent text-bg rounded-full font-medium">Explore the Feed</a>
              </div>
            `;return}const{data:k}=await window.sb.from("sparks").select("*").order("active_date",{ascending:!1}).limit(1),C=k==null?void 0:k[0];let S="";n&&(S+=`📢 ${window.sanitize(n)} &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`),C&&(S+=`🔥 New Weekly Spark Challenge: "${window.sanitize(C.prompt_text)}" - Accept the challenge in the Zen Chamber! &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;`);const h=(w,M="small")=>{var j,A;const y=window.sanitize(((j=w.author)==null?void 0:j.display_name)||((A=w.author)==null?void 0:A.username)||"Anonymous"),$=w.content?w.content.replace(/<[^>]*>?/gm,"").substring(0,120)+"...":"";return`
              <a href="#/work/${w.id}" class="group block bg-surface border border-border p-6 md:p-8 rounded-xl hover:shadow-xl transition-all duration-500 hover:-translate-y-1">
                <div class="flex justify-between items-start mb-4">
                  <span class="text-[10px] uppercase tracking-[0.2em] font-bold text-accent/60">${window.sanitize(w.genre)||"Story"}</span>
                  <span class="text-[10px] text-text/40">${w.word_count||0} words</span>
                </div>
                <h3 class="text-2xl font-serif font-bold mb-3 group-hover:text-accent transition-colors leading-tight">${window.sanitize(w.title)}</h3>
                <p class="text-text/60 text-sm leading-relaxed mb-6 line-clamp-3 italic">"${window.sanitize($)}"</p>
                <div class="pt-4 border-t border-border/30 flex items-center gap-3">
                  <div class="w-6 h-6 rounded-full bg-accent2/20 flex items-center justify-center text-[10px] font-bold text-accent2">
                    ${y.substring(0,1).toUpperCase()}
                  </div>
                  <span class="text-xs font-medium text-text/80">${y}</span>
                </div>
              </a>
            `};e.innerHTML=`
            <div class="max-w-6xl mx-auto px-6 py-12 md:py-20 space-y-24">
              ${S?`
                <div class="w-full bg-accent text-bg py-2 overflow-hidden flex items-center rounded-lg shadow-sm mb-4">
                  <div class="animate-marquee whitespace-nowrap font-bold tracking-wide">
                    ${S}
                  </div>
                </div>
              `:""}
              
              <!-- Hero Beacon -->
              ${u?`
                <section class="relative">
                  <div class="grid grid-cols-1 lg:grid-cols-12 gap-12 items-center">
                    <div class="lg:col-span-12 text-center space-y-8 max-w-3xl mx-auto">
                      <div class="inline-flex items-center gap-3 px-4 py-1 rounded-full bg-accent/10 text-accent text-xs font-bold uppercase tracking-widest">
                        <span class="relative flex h-2 w-2">
                          <span class="animate-ping absolute inline-flex h-full w-full rounded-full bg-accent opacity-75"></span>
                          <span class="relative inline-flex rounded-full h-2 w-2 bg-accent"></span>
                        </span>
                        Featured Beacon
                      </div>
                      
                      <h1 class="text-5xl md:text-7xl font-serif font-bold leading-[1.1] text-text">
                        ${window.sanitize(u.title)}
                      </h1>
                      
                      <div class="text-xl md:text-2xl font-serif italic text-text/60 leading-relaxed">
                        "${window.sanitize(u.content?u.content.replace(/<[^>]*>?/gm,"").substring(0,200)+"...":"")}"
                      </div>
                      
                      <div class="flex flex-wrap items-center justify-center gap-8 pt-4">
                        <div class="flex items-center gap-4">
                          ${(i=u.author)!=null&&i.avatar_url?`<img src="${u.author.avatar_url}" class="w-12 h-12 rounded-full object-cover border-2 border-accent/20">`:`<div class="w-12 h-12 rounded-full bg-accent text-bg flex items-center justify-center text-xl font-serif font-bold">${window.sanitize(((t=u.author)==null?void 0:t.display_name)||((g=u.author)==null?void 0:g.username)||"A").substring(0,1).toUpperCase()}</div>`}
                          <div class="text-left">
                            <div class="text-sm font-bold text-text">Written by</div>
                            <a href="#/profile/${(x=u.author)==null?void 0:x.username}" class="text-lg font-serif hover:text-accent transition-colors">${window.sanitize(((d=u.author)==null?void 0:d.display_name)||((b=u.author)==null?void 0:b.username))}</a>
                          </div>
                        </div>
                        
                        <a href="#/work/${u.id}" class="px-10 py-4 bg-accent text-bg rounded-full font-bold text-lg hover:shadow-2xl hover:scale-105 transition-all duration-300">
                          Read Full Story
                        </a>
                      </div>
                    </div>
                  </div>
                </section>
              `:""}

              <!-- Spark Challenge Advertisement -->
              ${C?`
                <section class="relative overflow-hidden rounded-3xl bg-accent p-8 md:p-12 text-bg shadow-2xl">
                  <div class="absolute top-0 right-0 w-64 h-64 bg-bg/10 rounded-full -translate-y-1/2 translate-x-1/2 blur-3xl"></div>
                  <div class="relative z-10 grid grid-cols-1 md:grid-cols-2 gap-8 items-center">
                    <div class="space-y-6">
                      <div class="inline-block px-3 py-1 bg-bg/20 rounded text-[10px] font-bold uppercase tracking-widest">Weekly Spark Challenge</div>
                      <h2 class="text-3xl md:text-5xl font-serif font-bold leading-tight">"${window.sanitize(C.prompt_text)}"</h2>
                      <p class="text-bg/80 text-lg italic">Ignite your creativity. Write your response in the Zen Chamber and win rare rewards.</p>
                      <div class="flex gap-4 pt-4">
                        <a href="#/spark" class="px-8 py-3 bg-bg text-accent rounded-full font-bold hover:scale-105 transition-transform">Accept Challenge</a>
                        <a href="#/spark-board" class="px-8 py-3 border border-bg/30 hover:bg-bg/10 rounded-full font-bold transition-colors">View Leaderboard</a>
                      </div>
                    </div>
                    <div class="hidden md:flex justify-center">
                      <div class="text-9xl opacity-20 select-none">⚡</div>
                    </div>
                  </div>
                </section>
              `:""}

              <!-- Featured Grid -->
              <section class="space-y-12">
                <div class="flex items-end justify-between border-b border-border pb-6">
                  <div class="space-y-2">
                    <h2 class="text-3xl md:text-4xl font-serif font-bold">Curated Selection</h2>
                    <p class="text-text/50 italic">Hand-picked stories from the Inkroot community.</p>
                  </div>
                  <a href="#/discover" class="text-accent font-bold hover:underline hidden md:block">View All Discoveries →</a>
                </div>
                
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
                  ${v.map(w=>h(w)).join("")}
                </div>
                
                <div class="md:hidden text-center pt-8">
                  <a href="#/discover" class="inline-block px-8 py-3 border border-border rounded-full font-medium">View All Discoveries</a>
                </div>
              </section>

              <!-- Editorial Quote / Mission -->
              <section class="py-20 border-y border-border/50 text-center space-y-8">
                <div class="max-w-3xl mx-auto">
                  <span class="text-accent text-4xl font-serif italic">“</span>
                  <h2 class="text-3xl md:text-4xl font-serif font-bold leading-tight px-4">
                    Inkroot is a sanctuary for the written word—a place where local voices find their echo and stories find their home.
                  </h2>
                  <div class="mt-8 flex items-center justify-center gap-4">
                    <div class="h-px w-12 bg-border"></div>
                    <span class="text-xs uppercase tracking-widest font-bold text-text/40">The Inkroot Collective</span>
                    <div class="h-px w-12 bg-border"></div>
                  </div>
                </div>
              </section>
            </div>
          `}catch(f){console.error(f),e.innerHTML='<div class="p-12 text-center text-red-500">Error loading home page.</div>'}};window.renderFeed=async()=>{var C;const e=document.getElementById("app-content");let s=null,a="global",o=0;const i=10;let t=[];const{data:g}=await window.sb.auth.getSession(),x=(C=g==null?void 0:g.session)==null?void 0:C.user;if(x){const{data:S}=await window.sb.from("users").select("city").eq("id",x.id).single();S!=null&&S.city&&(s=S.city)}const d=async(S=!1)=>{S||(o=0,t=[]);let h=window.sb.from("works").select("*, author:author_id(id, display_name, username, avatar_url, city)").eq("status","published").neq("type","spark").neq("type","showcase").order("is_boosted",{ascending:!1}).order("boosted_at",{ascending:!1,nullsFirst:!1}).order("published_at",{ascending:!1}).range(o*i,(o+1)*i-1);if(a==="local"&&s&&(h=window.sb.from("works").select("*, author:author_id!inner(id, display_name, username, avatar_url, city)").eq("status","published").neq("type","spark").neq("type","showcase").eq("author.city",s).order("is_boosted",{ascending:!1}).order("boosted_at",{ascending:!1,nullsFirst:!1}).order("published_at",{ascending:!1}).range(o*i,(o+1)*i-1)),a==="following"&&x){const{data:I}=await window.sb.from("follows").select("following_id").eq("user_id",x.id),P=(I==null?void 0:I.map(H=>H.following_id))||[];if(P.length===0)return[];h=window.sb.from("works").select("*, author:author_id(id, display_name, username, avatar_url, city)").eq("status","published").neq("type","spark").neq("type","showcase").in("author_id",P).order("is_boosted",{ascending:!1}).order("boosted_at",{ascending:!1,nullsFirst:!1}).order("published_at",{ascending:!1}).range(o*i,(o+1)*i-1)}const{data:w,error:M}=await h;if(M)return window.showToast("Error fetching feed","error"),console.error(M),[];const y=(w||[]).map(I=>I.id);let $={},j={};if(y.length>0){const[{data:I},{data:P}]=await Promise.all([window.sb.from("likes").select("work_id").in("work_id",y),window.sb.from("comments").select("work_id").in("work_id",y)]);I==null||I.forEach(H=>{$[H.work_id]=($[H.work_id]||0)+1}),P==null||P.forEach(H=>{j[H.work_id]=(j[H.work_id]||0)+1})}return(w||[]).map(I=>({...I,likes_count:$[I.id]||0,comments_count:j[I.id]||0}))},b=S=>S.length===0&&o===0?'<div class="col-span-full text-center text-text/50 py-12">No works found.</div>':S.map(h=>{var A,I,P,H,U,V;const w=h.content?h.content.replace(/<[^>]*>?/gm,"").substring(0,150)+"...":"",M=window.sanitize(((A=h.author)==null?void 0:A.display_name)||((I=h.author)==null?void 0:I.username)||"Anonymous"),y=(P=h.author)!=null&&P.avatar_url?`<a href="#/profile/${h.author.username}" class="block w-8 h-8 rounded-full overflow-hidden border border-border/50 hover:border-accent transition-colors"><img src="${h.author.avatar_url}" class="w-full h-full object-cover" referrerPolicy="no-referrer"></a>`:`<a href="#/profile/${(H=h.author)==null?void 0:H.username}" class="w-8 h-8 rounded-full bg-accent2 text-bg flex items-center justify-center text-xs font-bold hover:opacity-90 transition-opacity">${M.substring(0,2).toUpperCase()}</a>`,$=h.paper_texture&&h.paper_texture!=="default"?`texture-${h.paper_texture}`:"bg-surface",j=h.custom_font&&h.custom_font!=="default"?`font-${h.custom_font}`:"";return`
            <div class="${$} border ${h.is_boosted?"border-accent2/50 shadow-accent2/10":"border-border"} rounded-lg p-6 shadow-sm hover:shadow-md transition-shadow break-inside-avoid mb-6 relative overflow-hidden">
              ${h.is_boosted?`
                <div class="absolute top-0 right-0 px-3 py-1 bg-accent2 text-bg text-[10px] font-bold uppercase tracking-widest rounded-bl-lg">
                  🚀 Boosted
                </div>
              `:""}
              <div class="flex justify-between items-start mb-4">
                <div class="flex items-center gap-3">
                  ${y}
                  <div>
                    <a href="#/profile/${(U=h.author)==null?void 0:U.username}" class="font-medium hover:text-accent transition-colors">${M}</a>
                    ${(V=h.author)!=null&&V.city?`<div class="text-xs text-text/50">📍 ${h.author.city}</div>`:""}
                  </div>
                </div>
                <span class="text-xs font-medium px-2 py-1 rounded-full ${we(h.genre)}">${window.sanitize(h.genre)||"Uncategorized"}</span>
              </div>
              
              <h3 class="text-2xl font-serif font-bold mb-2 text-text">${window.sanitize(h.title)}</h3>
              
              <div class="flex gap-2 mb-4">
                <span class="text-xs bg-bg border border-border px-2 py-1 rounded text-text/70">${h.word_count||0} words</span>
                <span class="text-xs bg-bg border border-border px-2 py-1 rounded text-text/70 capitalize">${h.feedback_mode||"standard"} feedback</span>
                <span class="text-xs bg-bg border border-border px-2 py-1 rounded text-text/70 flex items-center gap-1">❤️ ${h.likes_count||0}</span>
                <span class="text-xs bg-bg border border-border px-2 py-1 rounded text-text/70 flex items-center gap-1">💬 ${h.comments_count||0}</span>
              </div>
              
              <p class="text-text/80 leading-relaxed mb-4 text-sm ${j}">${window.sanitize(w)}</p>
              
              <div class="flex justify-between items-center mt-auto pt-4 border-t border-border/50">
                <span class="text-xs text-text/50">${new Date(h.published_at||h.created_at).toLocaleDateString(void 0,{month:"short",day:"numeric",year:"numeric"})}</span>
                <a href="#/work/${h.id}" class="text-accent font-medium hover:underline text-sm">Read More →</a>
              </div>
            </div>
          `}).join(""),f=async()=>{const S=document.getElementById("feed-container"),h=document.getElementById("load-more-btn");h&&(h.style.display="none"),S.innerHTML='<div class="col-span-full text-center py-12"><div class="animate-pulse text-accent">Finding writers...</div></div>',S.classList.remove("columns-1","md:columns-2","space-y-6"),S.classList.add("grid","grid-cols-1","md:grid-cols-2","lg:grid-cols-3","gap-6");const{data:w,error:M}=await window.sb.from("users").select("id, username, display_name, avatar_url, bio, city, lighthouse_points, is_banned").order("lighthouse_points",{ascending:!1}).limit(50);if(console.log("Debug: All fetched writers:",w),M){S.innerHTML=`<div class="col-span-full text-center text-red-500">Error: ${M.message}</div>`;return}const y=w.filter($=>$.is_banned===!1);console.log("Debug: Active writers (not banned):",y),S.innerHTML=y.map($=>{const j=window.sanitize($.display_name||$.username||"Anonymous"),A=j.substring(0,2).toUpperCase();return`
              <div class="bg-surface border border-border rounded-xl p-6 flex flex-col items-center text-center hover:shadow-md transition-shadow">
                <div class="w-20 h-20 rounded-full overflow-hidden mb-4 border-2 border-accent/20">
                  ${$.avatar_url?`<img src="${$.avatar_url}" class="w-full h-full object-cover" referrerPolicy="no-referrer">`:`<div class="w-full h-full bg-accent2 text-bg flex items-center justify-center font-bold">${A}</div>`}
                </div>
                <h3 class="font-serif font-bold text-xl mb-1">${j}</h3>
                <p class="text-xs text-text/50 mb-3">@${window.sanitize($.username)||$.id.substring(0,8)} • ${window.sanitize($.city)||"Unknown"}</p>
                <p class="text-sm text-text/70 line-clamp-2 mb-4 h-10">${window.sanitize($.bio)||"A writer on Inkroot."}</p>
                <div class="flex items-center gap-2 mb-6">
                  <span class="text-accent font-bold">${$.lighthouse_points||0}</span>
                  <span class="text-[10px] uppercase tracking-widest font-bold text-text/40">Lighthouse Pts</span>
                </div>
                <div class="flex gap-2 w-full">
                  <a href="#/profile/${$.username||$.id}" class="flex-1 py-2 bg-bg border border-border rounded font-medium hover:text-accent transition-colors">Profile</a>
                </div>
              </div>
            `}).join("")},c=async(S=!1)=>{const h=document.getElementById("feed-container"),w=document.getElementById("hero-marquee-container"),M=document.getElementById("load-more-btn");if(h.classList.add("columns-1","md:columns-2","space-y-6"),h.classList.remove("grid","grid-cols-1","md:grid-cols-2","lg:grid-cols-3","gap-6"),S&&M&&(M.disabled=!0,M.innerHTML='<span class="animate-spin inline-block mr-2">⏳</span> Loading...'),!S)if(h.innerHTML='<div class="col-span-full text-center py-12"><div class="animate-pulse text-accent">Loading...</div></div>',w&&a==="global"){const{data:$}=await window.sb.from("works").select("*, author:author_id(username, display_name, avatar_url)").gt("hero_until",new Date().toISOString()).eq("status","published");if($&&$.length>0){for(let j=$.length-1;j>0;j--){const A=Math.floor(Math.random()*(j+1));[$[j],$[A]]=[$[A],$[j]]}w.innerHTML=`
                  <div class="mb-8 bg-accent/5 border border-accent/20 rounded-2xl p-6 overflow-hidden relative shadow-sm">
                    <div class="absolute top-0 right-0 bg-accent text-bg text-[10px] font-bold uppercase tracking-widest px-3 py-1 rounded-bl-lg">Hero Marquee</div>
                    <div class="flex overflow-x-auto gap-6 pb-2 snap-x hide-scrollbar">
                      ${$.map(j=>{var A,I;return`
                        <a href="#/work/${j.id}" class="min-w-[320px] max-w-[320px] shrink-0 snap-center bg-surface border border-border rounded-xl p-6 hover:border-accent transition-colors block">
                          <h3 class="font-serif font-bold text-xl mb-2 truncate">${window.sanitize(j.title)}</h3>
                          <p class="text-sm text-text/70 line-clamp-3 mb-4 font-serif">${window.sanitize(j.content.replace(/<[^>]*>?/gm,""))}</p>
                          <div class="flex items-center gap-2 text-xs text-text/50">
                            <span class="font-bold text-accent">By ${window.sanitize(((A=j.author)==null?void 0:A.display_name)||((I=j.author)==null?void 0:I.username)||"Anonymous")}</span>
                          </div>
                        </a>
                      `}).join("")}
                    </div>
                  </div>
                `,w.style.display="block"}else w.style.display="none",w.innerHTML=""}else w&&(w.style.display="none");const y=await d(S);if(S){t=[...t,...y];const $=document.createElement("div");for($.innerHTML=b(y);$.firstChild;)h.appendChild($.firstChild);M&&(M.disabled=!1,M.textContent="Load More")}else t=y,h.innerHTML=b(t);y.length<i?M&&(M.style.display="none"):M&&(M.style.display="block")};e.innerHTML=`
        <div class="max-w-7xl mx-auto p-4 md:p-8">
          <div class="flex flex-col md:flex-row justify-between items-center mb-8 gap-4">
            <h1 class="text-3xl font-serif font-bold">Discover</h1>
            
            <div class="flex bg-surface border border-border rounded-full p-1">
              <button id="filter-global" class="px-6 py-2 rounded-full text-sm font-medium transition-colors ${a==="global"?"bg-accent text-bg":"text-text/70 hover:text-text"}">🌍 Global</button>
              <button id="filter-local" class="${s?"":"opacity-50 cursor-not-allowed"} px-6 py-2 rounded-full text-sm font-medium transition-colors ${a==="local"?"bg-accent text-bg":"text-text/70 hover:text-text"}" ${s?"":'title="Set your city in profile to use local feed"'}>📍 ${s||"My City"}</button>
              <button id="filter-following" class="${x?"":"hidden"} px-6 py-2 rounded-full text-sm font-medium transition-colors ${a==="following"?"bg-accent text-bg":"text-text/70 hover:text-text"}">👥 Following</button>
              <button id="filter-writers" class="px-6 py-2 rounded-full text-sm font-medium transition-colors ${a==="writers"?"bg-accent text-bg":"text-text/70 hover:text-text"}">✍️ Writers</button>
            </div>
          </div>

          <div id="hero-marquee-container" style="display: none;"></div>

          <div id="feed-container" class="columns-1 md:columns-2 gap-6 space-y-6">
            <!-- Works will be rendered here -->
          </div>
          
          <div class="text-center mt-8">
            <button id="load-more-btn" class="hidden px-8 py-3 bg-surface border border-border text-text font-medium rounded hover:bg-bg/50 transition-colors">Load More</button>
          </div>
        </div>
      `;const p=document.getElementById("filter-global"),_=document.getElementById("filter-local"),n=document.getElementById("filter-following"),u=document.getElementById("filter-writers"),v=()=>{[p,_,n,u].forEach(S=>{if(!S)return;const h=S.id==="filter-local";S.className=`${h&&!s?"opacity-50 cursor-not-allowed":""} px-6 py-2 rounded-full text-sm font-medium transition-colors ${S.id===`filter-${a}`?"bg-accent text-bg":"text-text/70 hover:text-text"}`})};p&&(p.onclick=()=>{a!=="global"&&(a="global",v(),c())}),_&&(_.onclick=()=>{!s||a==="local"||(a="local",v(),c())}),n&&(n.onclick=()=>{!x||a==="following"||(a="following",v(),c())}),u&&(u.onclick=()=>{a!=="writers"&&(a="writers",v(),f())});const k=document.getElementById("load-more-btn");k&&(k.onclick=()=>{o++,c(!0)}),c()};window.renderWrite=async()=>{var k,C,S,h,w,M;const e=document.getElementById("app-content"),{data:s}=await window.sb.auth.getSession(),a=(k=s==null?void 0:s.session)==null?void 0:k.user;if(!a){e.innerHTML='<div class="p-8 text-center"><h2 class="text-2xl font-serif">Please sign in to write.</h2></div>';return}const o=window.location.hash.split("?id="),i=o.length>1?o[1]:null;let t=null;if(i){const{data:y,error:$}=await window.sb.from("works").select("*").eq("id",i).single();!$&&y.author_id===a.id&&(t=y)}const{data:g}=await window.sb.from("series").select("id, title").eq("author_id",a.id);e.innerHTML=`
        <div class="max-w-4xl mx-auto p-4 md:p-8">
          <div class="bg-surface border border-border shadow-xl rounded-lg overflow-hidden">
            <!-- Toolbar -->
            <div class="bg-bg/50 border-b border-border p-3 md:p-4 flex flex-wrap gap-2 md:gap-4 items-center justify-between sticky top-0 z-10">
              <div class="flex flex-wrap gap-2 md:gap-4 items-center w-full md:w-auto">
                <select id="write-genre" class="flex-1 md:flex-none bg-surface border border-border rounded px-3 py-1.5 text-xs md:text-sm focus:outline-none focus:border-accent">
                  <option value="" disabled ${t!=null&&t.genre?"":"selected"}>Select Genre</option>
                  <option value="Fiction" ${(t==null?void 0:t.genre)==="Fiction"?"selected":""}>Fiction</option>
                  <option value="Non-Fiction" ${(t==null?void 0:t.genre)==="Non-Fiction"?"selected":""}>Non-Fiction</option>
                  <option value="Poetry" ${(t==null?void 0:t.genre)==="Poetry"?"selected":""}>Poetry</option>
                  <option value="Essay" ${(t==null?void 0:t.genre)==="Essay"?"selected":""}>Essay</option>
                  <option value="Journalism" ${(t==null?void 0:t.genre)==="Journalism"?"selected":""}>Journalism</option>
                  <option value="Memoir" ${(t==null?void 0:t.genre)==="Memoir"?"selected":""}>Memoir</option>
                </select>
                
                <select id="write-type" class="flex-1 md:flex-none bg-surface border border-border rounded px-3 py-1.5 text-xs md:text-sm focus:outline-none focus:border-accent">
                  <option value="standalone" ${(t==null?void 0:t.type)==="standalone"?"selected":""}>Standalone Piece</option>
                  <option value="chapter" ${(t==null?void 0:t.type)==="chapter"?"selected":""}>Chapter in Series</option>
                </select>
                
                <select id="write-series" class="${(t==null?void 0:t.type)==="chapter"?"":"hidden"} flex-1 md:flex-none bg-surface border border-border rounded px-3 py-1.5 text-xs md:text-sm focus:outline-none focus:border-accent">
                  <option value="" disabled ${t!=null&&t.series_id?"":"selected"}>Select Series</option>
                  ${(g||[]).map(y=>`<option value="${y.id}" ${(t==null?void 0:t.series_id)===y.id?"selected":""}>${y.title}</option>`).join("")}
                </select>

                <select id="write-feedback" class="flex-1 md:flex-none bg-surface border border-border rounded px-3 py-1.5 text-xs md:text-sm focus:outline-none focus:border-accent">
                  <option value="none" ${(t==null?void 0:t.feedback_mode)==="none"?"selected":""}>No Feedback</option>
                  <option value="open" ${(t==null?void 0:t.feedback_mode)==="open"?"selected":""}>Open Feedback</option>
                  <option value="critique" ${(t==null?void 0:t.feedback_mode)==="critique"?"selected":""}>Constructive Critique</option>
                </select>
              </div>

              <div class="flex items-center gap-2 md:gap-4 w-full md:w-auto justify-between md:justify-end">
                <div id="word-count" class="text-xs text-text/50 font-mono">${(t==null?void 0:t.word_count)||0} words</div>
                <div class="flex gap-2">
                  <button id="btn-save-draft" class="px-3 py-1.5 border border-border rounded text-xs md:text-sm hover:bg-bg transition-colors">Save Draft</button>
                  <button id="btn-publish" class="px-4 py-1.5 bg-accent text-bg rounded font-medium text-xs md:text-sm hover:opacity-90 transition-opacity">
                    ${t?"Update":"Publish"}
                  </button>
                </div>
              </div>
            </div>

            <!-- Editor Area -->
            <div class="p-8 md:p-12 min-h-[70vh] bg-[#fdfbf7]">
              <input type="text" id="write-title" value="${(t==null?void 0:t.title)||""}" placeholder="Title of your work" class="w-full text-4xl md:text-5xl font-serif font-bold bg-transparent border-none focus:outline-none mb-8 text-black placeholder:text-text/30">
              
              <div id="write-content" contenteditable="true" class="w-full min-h-[50vh] text-lg leading-relaxed font-serif text-black focus:outline-none prose prose-lg max-w-none" placeholder="Start writing here...">${(t==null?void 0:t.content)||""}</div>
            </div>
          </div>
        </div>
      `;const x=document.getElementById("write-type"),d=document.getElementById("write-series"),b=document.getElementById("write-content"),f=document.getElementById("word-count");x.onchange=y=>{y.target.value==="chapter"?d.classList.remove("hidden"):(d.classList.add("hidden"),d.value="")},b.addEventListener("focus",function(){(this.innerHTML.trim()==="<p><br></p>"||this.innerHTML.trim()==="")&&(this.innerHTML="")});const c=()=>{var P,H,U,V,z;const y=((P=document.getElementById("write-title"))==null?void 0:P.value)||"",$=((H=document.getElementById("write-genre"))==null?void 0:H.value)||"",j=((U=document.getElementById("write-type"))==null?void 0:U.value)||"",A=((V=document.getElementById("write-series"))==null?void 0:V.value)||"",I=((z=document.getElementById("write-feedback"))==null?void 0:z.value)||"none";t?(localStorage.setItem(`inkroot-draft-content-${t.id}`,b.innerHTML),localStorage.setItem(`inkroot-draft-title-${t.id}`,y),localStorage.setItem(`inkroot-draft-genre-${t.id}`,$),localStorage.setItem(`inkroot-draft-type-${t.id}`,j),localStorage.setItem(`inkroot-draft-series-${t.id}`,A),localStorage.setItem(`inkroot-draft-feedback-${t.id}`,I)):(localStorage.setItem("inkroot-draft-content",b.innerHTML),localStorage.setItem("inkroot-draft-title",y),localStorage.setItem("inkroot-draft-genre",$),localStorage.setItem("inkroot-draft-type",j),localStorage.setItem("inkroot-draft-series",A),localStorage.setItem("inkroot-draft-feedback",I))},p=()=>{const $=((b.innerText||"").match(/[^\s]+/g)||[]).length;f.textContent=`${$} words`};b.addEventListener("input",()=>{p(),c()}),(C=document.getElementById("write-title"))==null||C.addEventListener("input",c),(S=document.getElementById("write-genre"))==null||S.addEventListener("change",c),(h=document.getElementById("write-type"))==null||h.addEventListener("change",c),(w=document.getElementById("write-series"))==null||w.addEventListener("change",c),(M=document.getElementById("write-feedback"))==null||M.addEventListener("change",c),(()=>{const y=t?`-${t.id}`:"",$=localStorage.getItem(`inkroot-draft-content${y}`),j=localStorage.getItem(`inkroot-draft-title${y}`),A=localStorage.getItem(`inkroot-draft-genre${y}`),I=localStorage.getItem(`inkroot-draft-type${y}`),P=localStorage.getItem(`inkroot-draft-series${y}`),H=localStorage.getItem(`inkroot-draft-feedback${y}`);if($||j||A||I||P||H){$&&$!=="<p><br></p>"&&(b.innerHTML=$);const U=document.getElementById("write-title");U&&j&&(U.value=j);const V=document.getElementById("write-genre");V&&A&&(V.value=A);const z=document.getElementById("write-type");z&&I&&(z.value=I,I==="chapter"&&d.classList.remove("hidden"));const D=document.getElementById("write-series");D&&P&&(D.value=P);const R=document.getElementById("write-feedback");R&&H&&(R.value=H),p()}})();const n=async y=>{var N,W,G,Y,K;const $=((N=document.getElementById("write-title"))==null?void 0:N.value.trim())||"",j=b.innerHTML,A=((W=document.getElementById("write-genre"))==null?void 0:W.value)||"",I=((G=document.getElementById("write-type"))==null?void 0:G.value)||"standalone",P=((Y=document.getElementById("write-series"))==null?void 0:Y.value)||"",H=((K=document.getElementById("write-feedback"))==null?void 0:K.value)||"none",V=((b.innerText||"").match(/[^\s]+/g)||[]).length;if(!$)return window.showToast("Title is required","error");if(!j||j==="<p><br></p>")return window.showToast("Content is required","error");if(!A)return window.showToast("Please select a genre","error");if(I==="chapter"&&!P)return window.showToast("Please select a series for this chapter","error");const z=i?`-${i}`:"";localStorage.removeItem(`inkroot-draft-content${z}`),localStorage.removeItem(`inkroot-draft-title${z}`),localStorage.removeItem(`inkroot-draft-genre${z}`),localStorage.removeItem(`inkroot-draft-type${z}`),localStorage.removeItem(`inkroot-draft-series${z}`),localStorage.removeItem(`inkroot-draft-feedback${z}`);const D={title:$,content:j,genre:A,type:I,series_id:P||null,feedback_mode:H,word_count:V,status:y,author_id:a.id},R=y==="published"?document.getElementById("btn-publish"):document.getElementById("btn-save-draft"),q=R.textContent;R.disabled=!0,R.textContent="Saving...";try{await window.publishWork(D,i),window.showToast(`Work ${y==="published"?"published":"saved"} successfully!`,"success"),window.location.hash="#/profile"}catch(te){window.showToast(te.message,"error"),R.disabled=!1,R.textContent=q}},u=document.getElementById("btn-save-draft");u&&(u.onclick=()=>n("draft"));const v=document.getElementById("btn-publish");v&&(v.onclick=()=>n("published"))};window.publishWork=async(e,s=null)=>{let a,o;if(s){const{data:i,error:t}=await window.sb.from("works").update({title:e.title,content:e.content,genre:e.genre,type:e.type,series_id:e.series_id,feedback_mode:e.feedback_mode,purchase_url:e.purchase_url,cover_url:e.cover_url,word_count:e.word_count,status:e.status,published_at:e.status==="published"?new Date().toISOString():null}).eq("id",s).select().single();a=i,o=t}else{const{data:i,error:t}=await window.sb.from("works").insert({title:e.title,content:e.content,genre:e.genre,type:e.type,series_id:e.series_id,feedback_mode:e.feedback_mode,purchase_url:e.purchase_url,cover_url:e.cover_url,word_count:e.word_count,status:e.status,author_id:e.author_id,published_at:e.status==="published"?new Date().toISOString():null}).select().single();a=i,o=t}if(o)throw o;if(e.status==="published"&&e.type==="chapter"&&e.series_id){const{data:i}=await window.sb.from("series_subscriptions").select("user_id").eq("series_id",e.series_id);if(i&&i.length>0){const t=i.map(g=>({user_id:g.user_id,type:"new_chapter",content:`A new chapter "${e.title}" was published in a series you follow.`,link:`#/work/${a.id}`}));await window.sb.from("notifications").insert(t)}}return a};window.renderWork=async e=>{var i,t,g,x,d,b,f,c,p,_;const s=document.getElementById("app-content");s.innerHTML=`
          <div class="flex items-center justify-center h-full">
            <div class="animate-pulse text-accent font-serif text-xl">Loading work...</div>
          </div>
        `;const{data:a}=await window.sb.auth.getSession(),o=(i=a==null?void 0:a.session)==null?void 0:i.user;try{const{data:n,error:u}=await window.sb.from("works").select("*, author:author_id(id, display_name, username, avatar_url, bio, city, role)").eq("id",e).single();if(u)throw u;if(!n)throw new Error("Work not found");const v=window.sanitize(((t=n.author)==null?void 0:t.display_name)||((g=n.author)==null?void 0:g.username)||"Anonymous"),k=(x=n.author)!=null&&x.avatar_url?`<img src="${n.author.avatar_url}" class="w-12 h-12 rounded-full object-cover border border-border" referrerPolicy="no-referrer">`:`<div class="w-12 h-12 rounded-full bg-accent2 text-bg flex items-center justify-center text-lg font-bold border border-border">${v.substring(0,1).toUpperCase()}</div>`,C=n.paper_texture&&n.paper_texture!=="default"?`texture-${n.paper_texture}`:"bg-surface",S=n.custom_font&&n.custom_font!=="default"?`font-${n.custom_font}`:"";s.innerHTML=`
            <div class="max-w-3xl mx-auto p-6 md:p-12">
              <!-- Back Button -->
              <button id="work-back-btn" class="mb-8 flex items-center gap-2 text-text/50 hover:text-accent transition-colors cursor-pointer">
                <span class="text-xl">←</span>
                <span class="font-medium">Back to previous view</span>
              </button>

              <article class="${C} border border-border rounded-xl shadow-sm overflow-hidden">
                <!-- Header -->
                <header class="p-8 md:p-12 border-b border-border bg-bg/30">
                  <div class="flex flex-wrap gap-3 mb-6">
                    <span class="px-3 py-1 rounded-full text-xs font-medium ${we(n.genre)} border border-border/50">
                      ${window.sanitize(n.genre)||"Uncategorized"}
                    </span>
                    <span class="px-3 py-1 rounded-full text-xs font-medium bg-surface border border-border text-text/50">
                      ${n.word_count||0} words
                    </span>
                  </div>
                  <h1 class="text-4xl md:text-6xl font-serif font-bold text-text mb-8 leading-tight">${window.sanitize(n.title)}</h1>
                  
                  <div class="flex items-center gap-4">
                    ${k}
                    <div>
                      <a href="#/profile/${(d=n.author)==null?void 0:d.username}" class="font-serif font-bold text-xl hover:text-accent transition-colors block leading-none mb-1">${v}</a>
                      <div class="text-sm text-text/50">
                        Published on ${new Date(n.published_at||n.created_at).toLocaleDateString(void 0,{month:"long",day:"numeric",year:"numeric"})}
                        ${(b=n.author)!=null&&b.city?` • 📍 ${n.author.city}`:""}
                      </div>
                    </div>
                  </div>
                  
                  <!-- Author Actions (Boost) -->
                  ${(o==null?void 0:o.id)===n.author_id||window.isAdminUser(o)?`
                    <div class="mt-8 pt-6 border-t border-border/30 flex items-center justify-between">
                      <div class="flex items-center gap-4">
                        <div class="text-xs font-bold uppercase tracking-widest text-text/40">${(o==null?void 0:o.id)===n.author_id?"Author Tools":"Admin Tools"}</div>
                        ${n.is_boosted?`
                          <div class="px-3 py-1 bg-accent2 text-bg text-[10px] font-bold rounded-full uppercase flex items-center gap-1">
                            <span>🚀</span> Boosted
                          </div>
                        `:`
                          <button id="boost-work-btn" class="px-4 py-2 bg-accent2 text-bg rounded-lg text-xs font-bold hover:opacity-90 transition-all flex items-center gap-2">
                            <span>🖊️</span> ${window.isAdminUser(o)?"Admin: Free Boost":"Boost this work (Uses 1 Ball Point)"}
                          </button>
                        `}
                      </div>
                      ${(o==null?void 0:o.id)===n.author_id?`<a href="#/write?id=${n.id}" class="text-xs font-bold text-accent hover:underline">Edit Work</a>`:""}
                    </div>
                  `:""}
                </header>

                <!-- Content -->
                <div class="p-8 md:p-16 font-serif text-text/90 leading-relaxed text-xl space-y-6 ${S}">
                  ${typeof DOMPurify<"u"?DOMPurify.sanitize(n.content):n.content}
                </div>

                ${n.cta_link?`
                  <div class="p-8 md:p-12 border-t border-border bg-accent/5 text-center">
                    <h4 class="font-serif font-bold text-2xl mb-3">Support the Author</h4>
                    <p class="text-text/70 mb-6">The author has provided a link to their external platform.</p>
                    <a href="${n.cta_link}" target="_blank" rel="noopener noreferrer" class="inline-block px-8 py-3 bg-accent text-bg font-bold rounded-full hover:opacity-90 transition-all shadow-lg hover:shadow-xl transform hover:-translate-y-1">
                      ${n.cta_text||"Visit Link"}
                    </a>
                  </div>
                `:""}

                <!-- Footer / Author Bio -->
                <footer class="p-8 md:p-12 border-t border-border bg-bg/10">
                  <div class="flex flex-col md:flex-row gap-8 items-center md:items-start text-center md:text-left">
                    <div class="shrink-0">
                      ${k.replace("w-12 h-12","w-20 h-20").replace("text-lg","text-3xl")}
                    </div>
                    <div class="flex-1">
                      <h3 class="font-serif font-bold text-2xl mb-2">About the Author</h3>
                      <p class="text-text/70 mb-4 italic line-clamp-3">${((f=n.author)==null?void 0:f.bio)||"A writer on Lighthouse."}</p>
                      <a href="#/profile/${(c=n.author)==null?void 0:c.username}" class="inline-block px-6 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">
                        View Profile
                      </a>
                    </div>
                  </div>
                </footer>
              </article>

              <div id="read-next-container"></div>

              <!-- Feedback / Comments Section -->
              <div class="mt-12 space-y-8">
                <div class="flex items-center justify-between border-b border-border pb-4">
                  <h3 class="font-serif font-bold text-2xl">Community Feedback</h3>
                  <div class="flex items-center gap-6">
                    <button id="like-btn" class="flex items-center gap-2 group cursor-pointer">
                      <span id="like-icon" class="text-2xl transition-transform group-hover:scale-125">🤍</span>
                      <span id="like-count" class="font-bold text-text/70">0</span>
                    </button>
                    <div class="flex items-center gap-2 text-text/50">
                      <span class="text-xl">💬</span>
                      <span id="comment-count" class="font-bold">0</span>
                    </div>
                  </div>
                </div>

                <!-- Comment Form -->
                <div class="bg-surface border border-border rounded-xl p-6">
                  <h4 class="font-serif font-bold mb-4">Leave a thought</h4>
                  <textarea id="comment-textarea" rows="3" class="w-full p-4 bg-bg border border-border rounded-lg focus:outline-none focus:border-accent text-text mb-4" placeholder="What did you think of this piece?"></textarea>
                  <div class="flex justify-end">
                    <button id="submit-comment-btn" class="px-6 py-2 bg-accent text-bg rounded-full font-medium hover:opacity-90 transition-opacity">Post Comment</button>
                  </div>
                </div>

                <!-- Comments List -->
                <div id="comments-list" class="space-y-6">
                  <!-- Comments will be rendered here -->
                  <div class="animate-pulse text-text/30 text-center py-8">Loading comments...</div>
                </div>
              </div>
            </div>
          `;const h=document.getElementById("read-next-container");if(h&&n.genre){const{data:z}=await window.sb.from("works").select("id, title, content, author:author_id(display_name, username)").eq("genre",n.genre).gt("read_next_until",new Date().toISOString()).neq("id",n.id).eq("status","published");if(z&&z.length>0){const D=z[Math.floor(Math.random()*z.length)];h.innerHTML=`
                <div class="mt-12 border-t border-border pt-8">
                  <div class="flex items-center gap-2 mb-6">
                    <span class="text-xl">✒️</span>
                    <h3 class="font-serif font-bold text-xl text-text/70 uppercase tracking-widest text-xs">Read Next in ${window.sanitize(n.genre)}</h3>
                  </div>
                  <a href="#/work/${D.id}" class="block bg-surface border border-border rounded-xl p-8 hover:border-accent transition-colors group">
                    <h4 class="font-serif font-bold text-3xl mb-3 group-hover:text-accent transition-colors">${window.sanitize(D.title)}</h4>
                    <p class="text-text/70 line-clamp-3 mb-4 font-serif text-lg">${window.sanitize(D.content.replace(/<[^>]*>?/gm,""))}</p>
                    <div class="text-sm font-bold text-accent">By ${window.sanitize(((p=D.author)==null?void 0:p.display_name)||((_=D.author)==null?void 0:_.username)||"Anonymous")}</div>
                  </a>
                </div>
              `}}const w=document.getElementById("like-btn"),M=document.getElementById("like-icon"),y=document.getElementById("like-count"),$=async()=>{try{const{count:z,error:D}=await window.sb.from("likes").select("*",{count:"exact",head:!0}).eq("work_id",e);if(D)throw D;if(y.textContent=z||0,o){const{data:R,error:q}=await window.sb.from("likes").select("id").eq("work_id",e).eq("user_id",o.id).maybeSingle();if(q)throw q;M.textContent=R?"❤️":"🤍"}else M.textContent="🤍"}catch(z){console.error("fetchLikes error:",z)}};w&&(w.onclick=async()=>{var z;if(!o)return window.showToast("Please sign in to like","error");try{const{data:D,error:R}=await window.sb.from("likes").select("id").eq("work_id",e).eq("user_id",o.id).maybeSingle();if(R)throw R;if(D){const{error:q}=await window.sb.from("likes").delete().eq("id",D.id);if(q)throw q}else{const{error:q}=await window.sb.from("likes").insert({work_id:e,user_id:o.id});if(q)throw q;n.type==="spark"&&window.sb.from("notifications").insert({user_id:n.author_id,type:"like",content:`${((z=o.user_metadata)==null?void 0:z.display_name)||o.email} liked your Spark entry!`,link:`#/work/${e}`}).then(({error:N})=>{N&&console.error("Notification error:",N)})}$()}catch(D){console.error("Like action error:",D),window.showToast("Failed to update like","error")}});const j=document.getElementById("comments-list"),A=document.getElementById("comment-count"),I=document.getElementById("submit-comment-btn"),P=document.getElementById("comment-textarea"),H=async()=>{try{let z="user";if(o){const{data:q}=await window.sb.from("users").select("role, is_banned").eq("id",o.id).maybeSingle();z=(q==null?void 0:q.role)||"user",q!=null&&q.is_banned&&(I.disabled=!0,P.placeholder="You have been banned from commenting.")}const{data:D,error:R}=await window.sb.from("comments").select("*, author:user_id(id, username, display_name, avatar_url, role)").eq("work_id",e).order("created_at",{ascending:!1});if(R){console.error("Error fetching comments:",R),j.innerHTML='<div class="text-center text-red-500 py-8 italic">Error loading comments.</div>';return}if(A.textContent=(D==null?void 0:D.length)||0,!D||D.length===0){j.innerHTML='<div class="text-center text-text/30 py-8 italic">No comments yet. Be the first to share a thought!</div>';return}j.innerHTML=D.map(q=>{var K,te;const N=o&&q.user_id===o.id,W=z==="admin",G=q.status==="blocked",Y=window.sanitize(((K=q.author)==null?void 0:K.display_name)||((te=q.author)==null?void 0:te.username)||"Anonymous");return G&&!W?`
                    <div class="flex gap-4 items-start opacity-50">
                      <div class="w-10 h-10 rounded-full bg-accent2/20 flex items-center justify-center text-sm font-bold shrink-0 overflow-hidden">
                        <span class="text-text/30">?</span>
                      </div>
                      <div class="flex-1 bg-surface/50 border border-border p-4 rounded-xl italic text-xs text-text/40">
                        This comment has been hidden by a moderator.
                      </div>
                    </div>
                  `:`
                  <div class="flex gap-4 items-start ${G?"opacity-70 grayscale":""}" id="comment-${q.id}">
                    <div class="w-10 h-10 rounded-full bg-accent2/20 flex items-center justify-center text-sm font-bold shrink-0 overflow-hidden">
                      ${window.renderAvatar(q.author,"w-full h-full")}
                    </div>
                    <div class="flex-1 bg-surface border border-border p-4 rounded-xl relative group">
                      <div class="flex justify-between items-center mb-2">
                        <div class="flex items-center gap-2">
                          <span class="font-bold text-sm">${window.renderUserName(q.author)}</span>
                          ${G?'<span class="text-[8px] bg-red-100 text-red-600 px-1 rounded uppercase font-bold">Blocked</span>':""}
                        </div>
                        <div class="flex items-center gap-2">
                          <span class="text-[10px] text-text/40 uppercase font-bold">${new Date(q.created_at).toLocaleDateString()}</span>
                          
                          <!-- Action Menu -->
                          <div class="flex gap-1 opacity-0 group-hover:opacity-100 transition-opacity">
                            ${N&&!G?`
                              <button class="edit-comment-btn p-1 hover:bg-black/5 rounded text-accent" data-id="${q.id}" title="Edit">
                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                              </button>
                            `:""}
                            ${N||W?`
                              <button class="delete-comment-btn p-1 hover:bg-black/5 rounded text-red-500" data-id="${q.id}" title="Delete">
                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                              </button>
                            `:""}
                            ${W?`
                              <button class="block-comment-btn p-1 hover:bg-black/5 rounded text-orange-500" data-id="${q.id}" data-status="${G?"active":"blocked"}" title="${G?"Unblock":"Block"}">
                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="4.93" y1="4.93" x2="19.07" y2="19.07"></line></svg>
                              </button>
                              <button class="ban-user-btn p-1 hover:bg-black/5 rounded text-black" data-user-id="${q.user_id}" title="Ban User">
                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 6L6 18"></path><path d="M6 6l12 12"></path></svg>
                              </button>
                            `:""}
                          </div>
                        </div>
                      </div>
                      <div class="comment-body" id="comment-body-${q.id}">
                        <p class="text-sm text-text/80 leading-relaxed">${window.sanitize(q.content)}</p>
                      </div>
                    </div>
                  </div>
                `}).join(""),document.querySelectorAll(".edit-comment-btn").forEach(q=>{q.onclick=()=>{const N=q.dataset.id,W=document.getElementById(`comment-body-${N}`),G=D.find(Y=>Y.id===N).content;W.innerHTML=`
                    <textarea id="edit-textarea-${N}" class="w-full p-2 text-sm border border-border rounded bg-bg focus:outline-none min-h-[80px] mb-2">${G}</textarea>
                    <div class="flex gap-2 justify-end">
                      <button class="cancel-edit-btn text-xs text-text/50 hover:text-text" data-id="${N}">Cancel</button>
                      <button class="save-edit-btn text-xs bg-accent text-bg px-3 py-1 rounded" data-id="${N}">Save</button>
                    </div>
                  `,W.querySelector(".cancel-edit-btn").onclick=()=>H(),W.querySelector(".save-edit-btn").onclick=async()=>{const Y=document.getElementById(`edit-textarea-${N}`).value.trim();if(!Y)return;const{error:K}=await window.sb.from("comments").update({content:Y}).eq("id",N);K?window.showToast("Failed to update comment","error"):(window.showToast("Comment updated","success"),H())}}}),document.querySelectorAll(".delete-comment-btn").forEach(q=>{q.onclick=async()=>{window.showConfirmModal("Delete Comment","Are you sure you want to delete this comment?",async()=>{const N=q.dataset.id,{error:W}=await window.sb.from("comments").delete().eq("id",N);W?window.showToast("Failed to delete comment","error"):(window.showToast("Comment deleted","success"),H())})}}),document.querySelectorAll(".block-comment-btn").forEach(q=>{q.onclick=async()=>{const N=q.dataset.id,W=q.dataset.status,{error:G}=await window.sb.from("comments").update({status:W}).eq("id",N);G?window.showToast("Failed to update comment status","error"):(window.showToast(`Comment ${W==="blocked"?"blocked":"unblocked"}`,"success"),H())}}),document.querySelectorAll(".ban-user-btn").forEach(q=>{q.onclick=async()=>{const N=q.dataset.userId;window.showConfirmModal("Ban User","Are you sure you want to ban this user? They will no longer be able to comment.",async()=>{const{error:W}=await window.sb.from("users").update({is_banned:!0}).eq("id",N);W?window.showToast("Failed to ban user","error"):(window.showToast("User banned successfully","success"),H())})}})}catch(z){console.error("Exception in fetchComments:",z),j.innerHTML='<div class="text-center text-red-500 py-8 italic">An unexpected error occurred while loading comments.</div>'}};I&&(I.onclick=async()=>{var R;if(!o)return window.showToast("Please sign in to comment","error");const{data:z}=await window.sb.from("users").select("is_banned").eq("id",o.id).maybeSingle();if(z!=null&&z.is_banned){window.showToast("You are banned from commenting","error");return}const D=P.value.trim();if(D)try{I.disabled=!0,I.textContent="Posting...";const{error:q}=await window.sb.from("comments").insert({work_id:e,user_id:o.id,content:D});if(q)throw q;P.value="",H(),n.author_id!==o.id&&window.sb.from("notifications").insert({user_id:n.author_id,type:"comment",content:`${((R=o.user_metadata)==null?void 0:R.display_name)||o.email} commented on your work!`,link:`#/work/${e}`}).then(({error:N})=>{N&&console.error("Notification error:",N)})}catch(q){console.error("Comment action error:",q),window.showToast("Failed to post comment","error")}finally{I.disabled=!1,I.textContent="Post Comment"}}),$(),H();const U=document.getElementById("boost-work-btn");U&&o&&(U.onclick=async()=>{const{data:z}=await window.sb.from("users").select("ball_points, role").eq("id",o.id).single(),D=(z==null?void 0:z.role)==="admin";if(!D&&((z==null?void 0:z.ball_points)||0)<1){window.showToast("You need 1 Ball Point Pen to boost a work. Complete Spark challenges to earn them!","error");return}U.disabled=!0,U.textContent="Boosting...";try{D||await window.sb.from("users").update({ball_points:z.ball_points-1}).eq("id",o.id),await window.sb.from("works").update({is_boosted:!0,boosted_at:new Date().toISOString()}).eq("id",e),window.showToast(D?"Admin Boost Applied! 🚀":"Work boosted to the top of the feed! 🚀","success"),window.renderWork(e)}catch{window.showToast("Failed to boost work","error"),U.disabled=!1,U.textContent=D?"Admin: Free Boost":"Boost this work (Uses 1 Ball Point)"}});const V=document.getElementById("work-back-btn");V&&(V.onclick=()=>{window.location.hash=window.lastHash})}catch(n){console.error(n),s.innerHTML=`
            <div class="p-12 text-center">
              <h2 class="text-2xl font-serif font-bold text-red-500 mb-4">Error loading work</h2>
              <p class="text-text/50 mb-8">${window.sanitize(n.message)}</p>
              <button onclick="window.history.back()" class="px-6 py-2 bg-accent text-bg rounded font-medium">Go Back</button>
            </div>
          `}};window.awardLighthousePoints=async(e,s,a=null)=>{if(!e)return;const i={share:15,spark:10,exchange:25,sprint:5}[s]||0;if(i!==0)try{const{data:t}=await window.sb.from("users").select("lighthouse_points").eq("id",e).single(),g=(t==null?void 0:t.lighthouse_points)||0,{data:x,error:d}=await window.sb.rpc("increment_lighthouse_points",{target_user_id:e,amount:i});if(d)throw d;await window.sb.from("lighthouse_events").insert({user_id:e,action_type:s,points_awarded:i,target_id:a});const b=g+i,f=window.checkTierUnlock(g,b);f?window.showTierUnlockToast(f.name,f.emoji):window.showToast(`+${i} Lighthouse Points!`,"success")}catch(t){console.error("Error awarding points:",t)}};window.checkTierUnlock=(e,s)=>{const a=[{threshold:700,name:"Beacon",emoji:"🗼"},{threshold:350,name:"Illuminator",emoji:"🏮"},{threshold:150,name:"Lantern",emoji:"🪔"},{threshold:50,name:"Spark",emoji:"✨"}];for(const o of a)if(e<o.threshold&&s>=o.threshold)return{name:o.name,emoji:o.emoji};return null};window.showTierUnlockToast=(e,s)=>{const a=document.getElementById("toast-container");if(!a)return;const o=document.createElement("div");o.className="bg-accent text-bg px-6 py-4 rounded shadow-2xl mb-2 transition-all duration-300 transform translate-y-0 opacity-100 flex items-center gap-4 border-2 border-accent2",o.innerHTML=`
        <div class="text-4xl">${s}</div>
        <div>
          <div class="font-serif font-bold text-xl">Tier Unlocked!</div>
          <div class="text-sm opacity-90">You are now a <strong>${e}</strong>.</div>
        </div>
      `,a.appendChild(o),setTimeout(()=>{o.classList.add("opacity-0","translate-y-2"),setTimeout(()=>o.remove(),300)},5e3)};window.generateQuoteCard=(e,s,a,o)=>{const i=document.createElement("canvas");i.width=1200,i.height=630;const t=i.getContext("2d");t.fillStyle="#F4F1EA",t.fillRect(0,0,i.width,i.height),t.strokeStyle="#D4CCBA",t.lineWidth=10,t.strokeRect(20,20,i.width-40,i.height-40),t.lineWidth=2,t.strokeRect(35,35,i.width-70,i.height-70),t.fillStyle="#2C302E",t.font="italic 48px Georgia, serif",t.textAlign="center",t.textBaseline="middle";const g=s.split(" ");let x="",d=[];const b=900;for(let n=0;n<g.length;n++){const u=x+g[n]+" ";t.measureText(u).width>b&&n>0?(d.push(x),x=g[n]+" "):x=u}d.push(x);const f=60,c=(i.height-d.length*f)/2-40;d.forEach((n,u)=>{t.fillText(n,i.width/2,c+u*f)}),t.font='bold 32px "Playfair Display", serif',t.fillStyle="#7B2D26";const p=`— ${a}, ${e}`;t.fillText(p,i.width/2,c+d.length*f+40),o&&(t.font="24px Inter, sans-serif",t.fillStyle="#C9A96E",t.fillText(`📍 ${o}`,i.width/2,c+d.length*f+90)),t.font='bold 24px "Playfair Display", serif',t.fillStyle="rgba(44, 48, 46, 0.3)",t.textAlign="right",t.fillText("Inkroot",i.width-60,i.height-60);const _=document.createElement("a");_.download=`inkroot-quote-${a.replace(/\s+/g,"-").toLowerCase()}.png`,_.href=i.toDataURL("image/png"),_.click(),window.sb.auth.getSession().then(({data:n})=>{var u;(u=n==null?void 0:n.session)!=null&&u.user&&window.awardLighthousePoints(n.session.user.id,"share")})};window.shareToTwitter=async(e,s,a)=>{var g;const o=`"${s.substring(0,100)}..."

Read more by ${a} on Inkroot:`,i=`https://twitter.com/intent/tweet?text=${encodeURIComponent(o)}&url=${encodeURIComponent(e)}`;window.open(i,"_blank");const{data:t}=await window.sb.auth.getSession();(g=t==null?void 0:t.session)!=null&&g.user&&window.awardLighthousePoints(t.session.user.id,"share")};window.shareToFacebook=async e=>{var o;const s=`https://www.facebook.com/sharer/sharer.php?u=${encodeURIComponent(e)}`;window.open(s,"_blank");const{data:a}=await window.sb.auth.getSession();(o=a==null?void 0:a.session)!=null&&o.user&&window.awardLighthousePoints(a.session.user.id,"share")};const ge=e=>{if(e.querySelector(".share-buttons"))return;const s=e.querySelector('a[href^="#/work/"]');if(!s)return;const a=window.location.origin+window.location.pathname+s.getAttribute("href"),o=e.querySelector("h3"),i=o?o.innerText:"",t=e.querySelector("p"),g=t?t.innerText:"",x=e.querySelector('a[href^="#/profile/"]'),d=x?x.innerText:"",b=e.querySelector(".text-xs.text-text\\/50"),c=(b?b.innerText:"").replace("📍 ","").trim(),p=document.createElement("div");p.className="share-buttons flex flex-wrap gap-2 mt-4 pt-4 border-t border-border",p.innerHTML=`
        <button class="btn-twitter text-xs bg-blue-50 text-blue-600 px-3 py-1.5 rounded hover:bg-blue-100 transition-colors font-medium flex items-center gap-1">
          <svg class="w-3 h-3" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path d="M23.953 4.57a10 10 0 01-2.825.775 4.958 4.958 0 002.163-2.723c-.951.555-2.005.959-3.127 1.184a4.92 4.92 0 00-8.384 4.482C7.69 8.095 4.067 6.13 1.64 3.162a4.822 4.822 0 00-.666 2.475c0 1.71.87 3.213 2.188 4.096a4.904 4.904 0 01-2.228-.616v.06a4.923 4.923 0 003.946 4.827 4.996 4.996 0 01-2.212.085 4.936 4.936 0 004.604 3.417 9.867 9.867 0 01-6.102 2.105c-.39 0-.779-.023-1.17-.067a13.995 13.995 0 007.557 2.209c9.053 0 13.998-7.496 13.998-13.985 0-.21 0-.42-.015-.63A9.935 9.935 0 0024 4.59z"></path></svg>
          Tweet
        </button>
        <button class="btn-facebook text-xs bg-blue-50 text-blue-800 px-3 py-1.5 rounded hover:bg-blue-100 transition-colors font-medium flex items-center gap-1">
          <svg class="w-3 h-3" fill="currentColor" viewBox="0 0 24 24" aria-hidden="true"><path fill-rule="evenodd" d="M22 12c0-5.523-4.477-10-10-10S2 6.477 2 12c0 4.991 3.657 9.128 8.438 9.878v-6.987h-2.54V12h2.54V9.797c0-2.506 1.492-3.89 3.777-3.89 1.094 0 2.238.195 2.238.195v2.46h-1.26c-1.243 0-1.63.771-1.63 1.562V12h2.773l-.443 2.89h-2.33v6.988C18.343 21.128 22 16.991 22 12z" clip-rule="evenodd"></path></svg>
          Share
        </button>
        <button class="btn-quote text-xs bg-accent2/10 text-accent2 px-3 py-1.5 rounded hover:bg-accent2/20 transition-colors font-medium flex items-center gap-1">
          <svg class="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z"></path></svg>
          Quote Card
        </button>
      `;const _=p.querySelector(".btn-twitter");_&&(_.onclick=()=>window.shareToTwitter(a,g,d));const n=p.querySelector(".btn-facebook");n&&(n.onclick=()=>window.shareToFacebook(a));const u=p.querySelector(".btn-quote");u&&(u.onclick=()=>window.generateQuoteCard(i,g,d,c)),e.appendChild(p)},Se=new MutationObserver(e=>{const s=document.getElementById("feed-container");if(!s)return;s.querySelectorAll(".bg-surface").forEach(ge)});Se.observe(document.body,{childList:!0,subtree:!0});setTimeout(()=>{const e=document.getElementById("feed-container");e&&e.querySelectorAll(".bg-surface").forEach(ge)},500);class Ee{constructor(){this.state="IDLE",this.totalSeconds=0,this.secondsLeft=0,this.interval=null,this.radius=90,this.circumference=2*Math.PI*this.radius}init(){this.circle=document.getElementById("timer-circle"),this.timeDisplay=document.getElementById("timer-display"),this.statusDisplay=document.getElementById("timer-status"),this.btnStart=document.getElementById("btn-timer-start"),this.btnPause=document.getElementById("btn-timer-pause"),this.btnReset=document.getElementById("btn-timer-reset"),this.presetBtns=document.querySelectorAll(".preset-btn"),this.customInput=document.getElementById("custom-time-input"),this.circle&&(this.circle.style.strokeDasharray=this.circumference,this.circle.style.strokeDashoffset=0),this.bindEvents(),this.renderLog()}bindEvents(){this.presetBtns.forEach(s=>{s.onclick=()=>{if(this.state==="RUNNING")return;const a=parseInt(s.dataset.time);this.setTimer(a)}}),this.customInput&&(this.customInput.onchange=s=>{if(this.state==="RUNNING")return;const a=parseInt(s.target.value);a>0&&this.setTimer(a)}),this.btnStart&&(this.btnStart.onclick=()=>{if(this.state==="IDLE"||this.state==="COMPLETED"){let s=25;const a=document.querySelector(".preset-btn.active");a?s=parseInt(a.dataset.time):this.customInput&&this.customInput.value&&(s=parseInt(this.customInput.value)),this.start(s)}else this.state==="PAUSED"&&this.resume()}),this.btnPause&&(this.btnPause.onclick=()=>this.pause()),this.btnReset&&(this.btnReset.onclick=()=>this.reset())}setTimer(s){this.presetBtns.forEach(o=>o.classList.remove("active","bg-accent","text-bg")),this.presetBtns.forEach(o=>o.classList.add("bg-surface","text-text"));const a=Array.from(this.presetBtns).find(o=>parseInt(o.dataset.time)===s);a?(a.classList.remove("bg-surface","text-text"),a.classList.add("active","bg-accent","text-bg"),this.customInput&&(this.customInput.value="")):this.customInput&&(this.customInput.value=s),this.totalSeconds=s*60,this.secondsLeft=this.totalSeconds,this.updateDisplay()}start(s){(this.totalSeconds===0||this.state==="COMPLETED")&&(this.totalSeconds=s*60,this.secondsLeft=this.totalSeconds),this.state="RUNNING",this.updateUI(),this.interval=setInterval(()=>this.tick(),1e3)}pause(){this.state==="RUNNING"&&(this.state="PAUSED",clearInterval(this.interval),this.updateUI())}resume(){this.state==="PAUSED"&&(this.state="RUNNING",this.updateUI(),this.interval=setInterval(()=>this.tick(),1e3))}reset(){this.state="IDLE",clearInterval(this.interval),this.secondsLeft=this.totalSeconds,this.updateDisplay(),this.updateUI()}tick(){this.secondsLeft>0?(this.secondsLeft--,this.updateDisplay()):this.complete()}updateDisplay(){if(!this.timeDisplay)return;const s=Math.floor(this.secondsLeft/60).toString().padStart(2,"0"),a=(this.secondsLeft%60).toString().padStart(2,"0");if(this.timeDisplay.textContent=`${s}:${a}`,this.circle&&this.totalSeconds>0){const o=this.secondsLeft/this.totalSeconds,i=this.circumference-o*this.circumference;this.circle.style.strokeDashoffset=i}}updateUI(){this.statusDisplay&&(this.statusDisplay.textContent=this.state,this.state==="RUNNING"?(this.btnStart.classList.add("hidden"),this.btnPause.classList.remove("hidden"),this.btnReset.classList.remove("hidden")):this.state==="PAUSED"?(this.btnStart.classList.remove("hidden"),this.btnStart.textContent="Resume",this.btnPause.classList.add("hidden"),this.btnReset.classList.remove("hidden")):(this.btnStart.classList.remove("hidden"),this.btnStart.textContent="Start Sprint",this.btnPause.classList.add("hidden"),this.btnReset.classList.add("hidden")))}complete(){this.state="COMPLETED",clearInterval(this.interval),this.updateDisplay(),this.updateUI(),this.showCompletionModal()}showCompletionModal(){const s=document.createElement("div");s.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[100] backdrop-blur-sm",s.innerHTML=`
            <div class="bg-surface border border-border rounded-lg shadow-xl w-full max-w-md p-6">
              <h2 class="text-2xl font-serif font-bold mb-4 text-center">Sprint Completed! 🎉</h2>
              <p class="text-center text-text/80 mb-6">Great job! How many words did you write?</p>
              
              <input type="number" id="sprint-words" placeholder="Word count" class="w-full px-4 py-3 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text text-center text-xl mb-6">
              
              <div class="flex gap-4">
                <button id="btn-sprint-save" class="flex-1 py-3 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Save & Claim Points</button>
              </div>
            </div>
          `,document.body.appendChild(s);const a=document.getElementById("btn-sprint-save");a&&(a.onclick=async()=>{var t;const o=parseInt(document.getElementById("sprint-words").value)||0;this.logSprint(this.totalSeconds/60,o);const{data:i}=await window.sb.auth.getSession();(t=i==null?void 0:i.session)!=null&&t.user&&await window.awardLighthousePoints(i.session.user.id,"sprint"),s.remove(),this.renderLog()})}logSprint(s,a){const o=JSON.parse(localStorage.getItem("inkroot_sprints")||"[]");o.unshift({date:new Date().toISOString(),minutes:s,words:a,wpm:Math.round(a/s)}),o.length>5&&o.pop(),localStorage.setItem("inkroot_sprints",JSON.stringify(o))}renderLog(){const s=document.getElementById("sprint-log");if(!s)return;const a=JSON.parse(localStorage.getItem("inkroot_sprints")||"[]");if(a.length===0){s.innerHTML='<p class="text-text/50 text-center py-4">No sprints recorded yet.</p>';return}let o=`
            <table class="w-full text-sm text-left">
              <thead class="text-xs text-text/60 uppercase bg-bg/50">
                <tr>
                  <th class="px-4 py-2 rounded-tl">Date</th>
                  <th class="px-4 py-2">Duration</th>
                  <th class="px-4 py-2">Words</th>
                  <th class="px-4 py-2 rounded-tr">WPM</th>
                </tr>
              </thead>
              <tbody>
          `;a.forEach(i=>{const t=new Date(i.date).toLocaleDateString(void 0,{month:"short",day:"numeric"});o+=`
              <tr class="border-b border-border/50 last:border-0">
                <td class="px-4 py-3">${t}</td>
                <td class="px-4 py-3">${i.minutes}m</td>
                <td class="px-4 py-3 font-medium">${i.words}</td>
                <td class="px-4 py-3 text-accent">${i.wpm}</td>
              </tr>
            `}),o+="</tbody></table>",s.innerHTML=o}}window.renderSprintDesk=()=>{const e=document.getElementById("app-content");e.innerHTML=`
          <div class="max-w-4xl mx-auto p-4 md:p-8">
            <div class="flex items-center justify-between mb-8">
              <h1 class="text-3xl font-serif font-bold">Writer's Desk</h1>
              <div class="text-sm text-text/60">Focus & Flow</div>
            </div>

            <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
              <!-- Timer Panel -->
              <div class="md:col-span-2 bg-surface border border-border rounded-lg p-8 shadow-sm flex flex-col items-center">
                
                <!-- Presets -->
                <div class="flex flex-wrap justify-center gap-2 mb-8">
                  <button class="preset-btn px-4 py-2 rounded-full text-sm font-medium transition-colors bg-surface border border-border text-text hover:bg-bg" data-time="10">10m</button>
                  <button class="preset-btn px-4 py-2 rounded-full text-sm font-medium transition-colors bg-surface border border-border text-text hover:bg-bg" data-time="15">15m</button>
                  <button class="preset-btn active px-4 py-2 rounded-full text-sm font-medium transition-colors bg-accent text-bg" data-time="25">25m</button>
                  <button class="preset-btn px-4 py-2 rounded-full text-sm font-medium transition-colors bg-surface border border-border text-text hover:bg-bg" data-time="30">30m</button>
                  <button class="preset-btn px-4 py-2 rounded-full text-sm font-medium transition-colors bg-surface border border-border text-text hover:bg-bg" data-time="45">45m</button>
                  <input type="number" id="custom-time-input" placeholder="Custom" class="w-20 px-3 py-2 rounded-full text-sm bg-bg border border-border focus:outline-none focus:border-accent text-center">
                </div>

                <!-- Circle Timer -->
                <div class="relative w-64 h-64 mb-8 flex items-center justify-center">
                  <svg class="w-full h-full transform -rotate-90" viewBox="0 0 200 200">
                    <circle cx="100" cy="100" r="90" fill="none" stroke="var(--border)" stroke-width="8" />
                    <circle id="timer-circle" cx="100" cy="100" r="90" fill="none" stroke="var(--accent)" stroke-width="8" stroke-linecap="round" class="transition-all duration-1000 ease-linear" />
                  </svg>
                  <div class="absolute inset-0 flex flex-col items-center justify-center">
                    <div id="timer-display" class="text-5xl font-mono font-bold text-text tracking-tight">25:00</div>
                    <div id="timer-status" class="text-sm text-text/50 font-medium uppercase tracking-widest mt-2">IDLE</div>
                  </div>
                </div>

                <!-- Controls -->
                <div class="flex gap-4">
                  <button id="btn-timer-start" class="px-8 py-3 bg-accent text-bg rounded-full font-medium hover:opacity-90 transition-opacity w-40">Start Sprint</button>
                  <button id="btn-timer-pause" class="hidden px-8 py-3 bg-surface border border-border text-text rounded-full font-medium hover:bg-bg transition-colors w-40">Pause</button>
                  <button id="btn-timer-reset" class="hidden px-8 py-3 bg-bg border border-border text-text/70 rounded-full font-medium hover:text-text transition-colors w-40">Reset</button>
                </div>
              </div>

              <!-- Log Panel -->
              <div class="bg-surface border border-border rounded-lg p-6 shadow-sm h-fit">
                <h3 class="font-serif font-bold text-xl mb-4">Recent Sprints</h3>
                <div id="sprint-log" class="overflow-x-auto">
                  <!-- Log table injected here -->
                </div>
              </div>
            </div>
          </div>
        `,window.currentSprintTimer=new Ee,window.currentSprintTimer.init(),window.currentSprintTimer.setTimer(25)};window.renderMap=async()=>{const e=document.getElementById("app-content");e.innerHTML=`
          <div class="relative w-full h-full flex flex-col">
            <!-- Search Bar -->
            <div class="absolute top-4 left-4 right-4 md:left-auto md:right-4 md:w-80 z-[1000] flex gap-2">
              <input type="text" id="map-search-input" placeholder="Search location..." class="flex-1 px-4 py-2 bg-surface border border-border rounded-lg shadow-lg focus:outline-none focus:border-accent text-sm">
              <button id="btn-map-search" class="px-4 py-2 bg-accent text-bg rounded-lg shadow-lg hover:opacity-90 transition-opacity">
                <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
              </button>
            </div>
            
            <div id="map-container" class="flex-1 w-full h-full z-0"></div>
            
            <button id="fab-add-pin" class="absolute bottom-8 right-8 z-[1000] bg-accent text-bg w-14 h-14 rounded-full shadow-lg flex items-center justify-center hover:opacity-90 transition-opacity">
              <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 4v16m8-8H4"></path></svg>
            </button>
          </div>
        `;const s=L.map("map-container");L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",{attribution:"&copy; OpenStreetMap contributors"}).addTo(s);const a=[30.3753,69.3451];s.setView(a,5),navigator.geolocation&&navigator.geolocation.getCurrentPosition(d=>{s.setView([d.coords.latitude,d.coords.longitude],12)},d=>{console.warn("Geolocation failed:",d)});const o=document.getElementById("map-search-input"),i=document.getElementById("btn-map-search"),t=async d=>{if(d)try{const f=await(await fetch(`https://nominatim.openstreetmap.org/search?format=json&q=${encodeURIComponent(d)}`)).json();if(f&&f.length>0){const{lat:c,lon:p}=f[0];s.setView([c,p],14)}else window.showToast("Location not found","error")}catch(b){console.error("Search error:",b),window.showToast("Search failed","error")}};i&&(i.onclick=()=>t(o.value)),o&&(o.onkeypress=d=>{d.key==="Enter"&&t(o.value)});const g=async()=>{const{data:d,error:b}=await window.sb.from("map_pins").select("*, user:user_id(username, display_name)");if(b){console.error("Error fetching pins:",b);return}s.eachLayer(c=>{c instanceof L.CircleMarker&&s.removeLayer(c)});const f={cafe:"#f59e0b",bookstore:"#800020",event:"#14b8a6"};d.forEach(c=>{var u,v;const p=f[c.type]||"#7B2D26",_=L.circleMarker([c.lat,c.lng],{radius:8,fillColor:p,color:"#fff",weight:2,opacity:1,fillOpacity:.8}).addTo(s),n=window.sanitize(((u=c.user)==null?void 0:u.display_name)||((v=c.user)==null?void 0:v.username)||"Anonymous");_.bindPopup(`
              <div class="font-sans">
                <h3 class="font-serif font-bold text-lg m-0">${window.sanitize(c.name)}</h3>
                <span class="text-xs uppercase tracking-wider text-text/60">${window.sanitize(c.type)}</span>
                <p class="mt-2 mb-2 text-sm">${window.sanitize(c.description)||""}</p>
                <div class="text-xs text-text/50">Added by: ${n}</div>
              </div>
            `)})};await g();const x=document.getElementById("fab-add-pin");x&&(x.onclick=async()=>{var n;const{data:d}=await window.sb.auth.getSession();if(!((n=d==null?void 0:d.session)!=null&&n.user)){window.showToast("Please sign in to add a pin.","error");return}const b=document.createElement("div");b.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[2000] backdrop-blur-sm",b.innerHTML=`
            <div class="bg-surface border border-border rounded-lg shadow-xl w-full max-w-md p-6">
              <h2 class="text-2xl font-serif font-bold mb-4">Add a Literary Pin</h2>
              <form id="add-pin-form" class="flex flex-col gap-4">
                <input type="text" id="pin-name" placeholder="Name (e.g., The Writer's Block Cafe)" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                
                <div class="flex gap-2">
                  <input type="text" id="pin-search-loc" placeholder="Search address..." class="flex-1 px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text text-sm">
                  <button type="button" id="btn-pin-loc-search" class="px-3 py-2 bg-surface border border-border rounded hover:bg-bg transition-colors">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                  </button>
                </div>

                <select id="pin-type" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                  <option value="cafe">Cafe</option>
                  <option value="bookstore">Bookstore</option>
                  <option value="event">Event Space</option>
                  <option value="other">Other</option>
                </select>
                <textarea id="pin-desc" placeholder="Description" rows="3" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text"></textarea>
                <div class="flex gap-4 mt-2">
                  <button type="button" id="btn-cancel-pin" class="flex-1 py-2 border border-border text-text rounded font-medium hover:bg-bg transition-colors">Cancel</button>
                  <button type="submit" class="flex-1 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Next</button>
                </div>
              </form>
            </div>
          `,document.body.appendChild(b);const f=document.getElementById("btn-pin-loc-search"),c=document.getElementById("pin-search-loc");f&&(f.onclick=()=>t(c.value)),c&&(c.onkeypress=u=>{u.key==="Enter"&&(u.preventDefault(),t(c.value))});const p=document.getElementById("btn-cancel-pin");p&&(p.onclick=()=>b.remove());const _=document.getElementById("add-pin-form");_&&(_.onsubmit=u=>{u.preventDefault();const v=document.getElementById("pin-name").value,k=document.getElementById("pin-type").value,C=document.getElementById("pin-desc").value;b.remove(),window.showToast("Click on the map to place your pin.","info"),document.getElementById("map-container").style.cursor="crosshair",s.once("click",async S=>{document.getElementById("map-container").style.cursor="";const{lat:h,lng:w}=S.latlng;try{const{error:M}=await window.sb.from("map_pins").insert({name:v,type:k,description:C,lat:h,lng:w,user_id:d.session.user.id});if(M)throw M;window.showToast("Pin added successfully!","success"),await g()}catch(M){window.showToast(M.message,"error")}})})})};window.renderEvents=async()=>{const e=document.getElementById("app-content");e.innerHTML=`
          <div class="max-w-5xl mx-auto p-4 md:p-8">
            <div class="flex items-center justify-between mb-8">
              <div>
                <h1 class="text-3xl font-serif font-bold">Literary Events</h1>
                <div class="text-sm text-text/60">Readings, workshops, and meetups</div>
              </div>
              <button id="btn-post-event" class="px-6 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Post Event</button>
            </div>
            
            <div id="events-container" class="grid grid-cols-1 md:grid-cols-2 gap-6">
              <div class="col-span-full text-center py-12"><div class="animate-pulse text-accent">Loading events...</div></div>
            </div>
          </div>
        `;const s=async()=>{var b,f;const{data:o}=await window.sb.auth.getSession(),i=(f=(b=o==null?void 0:o.session)==null?void 0:b.user)==null?void 0:f.id,t=new Date().toISOString(),{data:g,error:x}=await window.sb.from("events").select("*, organizer:organizer_id(username, display_name)").eq("status","published").gte("event_date",t).order("event_date",{ascending:!0}),d=document.getElementById("events-container");if(x){d.innerHTML='<div class="col-span-full text-center text-red-500">Error loading events.</div>';return}if(!g||g.length===0){d.innerHTML='<div class="col-span-full text-center text-text/50 py-12 bg-surface border border-border border-dashed rounded-lg">No upcoming events found.</div>';return}d.innerHTML=g.map(c=>{var S,h;const p=new Date(c.event_date),_=p.toLocaleDateString(void 0,{weekday:"short",month:"short",day:"numeric"}),n=p.toLocaleTimeString(void 0,{hour:"2-digit",minute:"2-digit"}),u=c.rsvps||[],v=u.length,k=i&&u.includes(i),C=window.sanitize(((S=c.organizer)==null?void 0:S.display_name)||((h=c.organizer)==null?void 0:h.username)||"Anonymous");return`
              <div class="bg-surface border border-border rounded-lg p-6 shadow-sm flex flex-col">
                <div class="flex justify-between items-start mb-4">
                  <span class="text-xs font-medium px-2 py-1 rounded-full bg-accent2/20 text-accent2 uppercase tracking-wider">${c.type||"Event"}</span>
                  <div class="text-right">
                    <div class="font-bold text-accent">${_}</div>
                    <div class="text-sm text-text/60">${n}</div>
                  </div>
                </div>
                
                <h3 class="text-2xl font-serif font-bold mb-2">${window.sanitize(c.title)}</h3>
                <div class="text-sm text-text/70 mb-4 flex items-center gap-1">
                  <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M17.657 16.657L13.414 20.9a1.998 1.998 0 01-2.827 0l-4.244-4.243a8 8 0 1111.314 0z"></path><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11a3 3 0 11-6 0 3 3 0 016 0z"></path></svg>
                  ${window.sanitize(c.location)}
                  ${c.lat&&c.lng?`<a href="#/map" onclick="window.lastMapCenter = [${c.lat}, ${c.lng}]; window.lastMapZoom = 15;" class="ml-1 text-accent hover:underline">(View on Map)</a>`:""}
                </div>
                
                <p class="text-text/80 text-sm mb-6 flex-1">${window.sanitize(c.description)||""}</p>
                
                <div class="flex items-center justify-between mt-auto pt-4 border-t border-border">
                  <div class="text-xs text-text/50">
                    Organized by ${C}<br>
                    ${v} attending
                  </div>
                  <button class="btn-rsvp px-4 py-2 rounded font-medium transition-colors ${k?"bg-surface border border-border text-text":"bg-accent text-bg hover:opacity-90"}" data-id="${c.id}" data-going="${k}">
                    ${k?"Attending":"RSVP"}
                  </button>
                </div>
              </div>
            `}).join(""),document.querySelectorAll(".btn-rsvp").forEach(c=>{c.onclick=async p=>{if(!i){window.handleError(null,"Please sign in to RSVP.");return}const _=p.target.dataset.id,n=p.target.dataset.going==="true";let v=g.find(k=>k.id===_).rsvps||[];n?v=v.filter(k=>k!==i):v.includes(i)||v.push(i),p.target.disabled=!0;try{const{error:k}=await window.sb.from("events").update({rsvps:v}).eq("id",_);if(k)throw k;window.showToast(n?"RSVP cancelled.":"RSVP confirmed!","success"),await s()}catch(k){window.handleError(k,"Failed to update RSVP."),p.target.disabled=!1}}})};await s();const a=document.getElementById("btn-post-event");a&&(a.onclick=async()=>{var c;const{data:o}=await window.sb.auth.getSession();if(!((c=o==null?void 0:o.session)!=null&&c.user)){window.handleError(null,"Please sign in to post an event.");return}const i=document.createElement("div");i.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[100] backdrop-blur-sm overflow-y-auto py-8",i.innerHTML=`
            <div class="bg-surface border border-border rounded-lg shadow-xl w-full max-w-md p-6 m-auto">
              <h2 class="text-2xl font-serif font-bold mb-4">Post an Event</h2>
              <form id="post-event-form" class="flex flex-col gap-4">
                <input type="text" id="ev-title" placeholder="Event Title" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                
                <div class="flex gap-4">
                  <input type="date" id="ev-date" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                  <input type="time" id="ev-time" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                </div>
                
                <div class="flex gap-2">
                  <input type="text" id="ev-location" placeholder="Location Name" required class="flex-1 px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                  <input type="hidden" id="ev-lat">
                  <input type="hidden" id="ev-lng">
                </div>

                <div class="flex gap-2">
                  <input type="text" id="ev-search-loc" placeholder="Search address for map..." class="flex-1 px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text text-sm">
                  <button type="button" id="btn-ev-loc-search" class="px-3 py-2 bg-surface border border-border rounded hover:bg-bg transition-colors">
                    <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"></path></svg>
                  </button>
                </div>
                <div id="ev-search-feedback" class="text-[10px] text-accent font-bold hidden">Location found & pinned!</div>
                
                <select id="ev-type" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                  <option value="reading">Reading</option>
                  <option value="workshop">Workshop</option>
                  <option value="meetup">Meetup</option>
                  <option value="launch">Book Launch</option>
                  <option value="other">Other</option>
                </select>
                
                <textarea id="ev-desc" placeholder="Description" rows="4" required class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text"></textarea>
                
                <div class="flex gap-4 mt-2">
                  <button type="button" id="btn-cancel-ev" class="flex-1 py-2 border border-border text-text rounded font-medium hover:bg-bg transition-colors">Cancel</button>
                  <button type="submit" id="btn-submit-ev" class="flex-1 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Post Event</button>
                </div>
              </form>
            </div>
          `,document.body.appendChild(i);const t=document.getElementById("btn-ev-loc-search"),g=document.getElementById("ev-search-loc"),x=document.getElementById("ev-search-feedback"),d=async p=>{if(p)try{const n=await(await fetch(`https://nominatim.openstreetmap.org/search?format=json&q=${encodeURIComponent(p)}`)).json();if(n&&n.length>0){const{lat:u,lon:v,display_name:k}=n[0];document.getElementById("ev-lat").value=u,document.getElementById("ev-lng").value=v,document.getElementById("ev-location").value||(document.getElementById("ev-location").value=k.split(",")[0]),x.classList.remove("hidden"),window.showToast("Location found!","success")}else window.showToast("Location not found","error")}catch{window.showToast("Search failed","error")}};t&&(t.onclick=()=>d(g.value)),g&&(g.onkeypress=p=>{p.key==="Enter"&&(p.preventDefault(),d(g.value))});const b=document.getElementById("btn-cancel-ev");b&&(b.onclick=()=>i.remove());const f=document.getElementById("post-event-form");f&&(f.onsubmit=async p=>{var $,j;p.preventDefault();const _=document.getElementById("ev-title").value,n=document.getElementById("ev-date").value,u=document.getElementById("ev-time").value,v=document.getElementById("ev-location").value,k=document.getElementById("ev-lat").value,C=document.getElementById("ev-lng").value,S=document.getElementById("ev-type").value,h=document.getElementById("ev-desc").value;if(!k||!C){window.showToast("Please search and confirm a location on the map first.","error");return}const w=new Date(`${n}T${u}`).toISOString(),M=document.getElementById("btn-submit-ev");M.disabled=!0,M.textContent="Submitting...";const y={title:_,event_date:w,location:v,type:S,description:h,organizer_id:o.session.user.id,rsvps:[],status:"pending"};k&&(y.lat=parseFloat(k)),C&&(y.lng=parseFloat(C));try{const{error:A}=await window.sb.from("events").insert(y);if(A)throw A;window.showToast("Event submitted for approval!","success"),i.remove(),await s()}catch(A){($=A.message)!=null&&$.includes('column "lat" does not exist')||(j=A.message)!=null&&j.includes("lat")?window.showToast("Database error: Please add 'lat', 'lng', and 'status' columns to your Supabase 'events' table.","error"):window.handleError(A),M.disabled=!1,M.textContent="Post Event"}})})};window.renderSpark=async()=>{var _,n;const e=document.getElementById("app-content");e.innerHTML='<div class="p-8 text-center"><div class="animate-pulse text-accent">Igniting the Spark...</div></div>';const{data:s}=await window.sb.auth.getSession();if(!((_=s==null?void 0:s.session)!=null&&_.user)){e.innerHTML='<div class="p-8 text-center"><h2 class="text-2xl font-serif">Please sign in to ignite your spark</h2></div>';return}const a=s.session.user.id,[{data:o},{data:i},{data:t}]=await Promise.all([window.sb.from("users").select("*").eq("id",a).single(),window.sb.from("sparks").select("*").order("active_date",{ascending:!1}).limit(1),window.sb.from("site_config").select("*")]),g=(n=t==null?void 0:t.find(u=>u.key==="spark_winner_id"))==null?void 0:n.value;let x=null;if(g){const{data:u}=await window.sb.from("works").select("*, author:author_id(username, display_name, avatar_url)").eq("id",g).maybeSingle();x=u}const d=i==null?void 0:i[0],b=o.premium_until&&new Date(o.premium_until)>new Date;if(!d){e.innerHTML='<div class="p-8 text-center"><h2 class="text-2xl font-serif">No active Spark Challenge right now. Check back soon!</h2></div>';return}const f=()=>{var u,v,k,C,S,h;e.innerHTML=`
            <div class="max-w-4xl mx-auto p-4 md:p-8 space-y-8">
              <header class="text-center space-y-4">
                <h1 class="text-4xl md:text-6xl font-serif font-bold text-accent">The Spark Challenge</h1>
                <p class="text-xl text-text/70 italic">"A single spark can ignite a forest of stories."</p>
              </header>

              ${x?`
                <!-- Weekly Winner Spotlight -->
                <div class="bg-accent/5 border-2 border-accent/20 rounded-2xl p-8 relative overflow-hidden group">
                  <div class="absolute -top-4 -right-4 text-8xl opacity-10 group-hover:rotate-12 transition-transform">🏆</div>
                  <div class="relative z-10 flex flex-col md:flex-row gap-8 items-center">
                    <div class="shrink-0">
                      <div class="w-24 h-24 rounded-full bg-accent text-bg flex items-center justify-center text-4xl font-serif font-bold shadow-xl border-4 border-bg overflow-hidden">
                        ${(u=x.author)!=null&&u.avatar_url?`<img src="${x.author.avatar_url}" class="w-full h-full object-cover" referrerPolicy="no-referrer">`:(((v=x.author)==null?void 0:v.display_name)||((k=x.author)==null?void 0:k.username)||"W").substring(0,1).toUpperCase()}
                      </div>
                    </div>
                    <div class="flex-1 text-center md:text-left">
                      <div class="text-accent font-bold uppercase tracking-widest text-xs mb-2">Last Week's Spark Winner</div>
                      <h3 class="text-3xl font-serif font-bold mb-2">${window.sanitize(x.title)}</h3>
                      <p class="text-text/70 italic mb-4 line-clamp-2">"${window.sanitize(x.content.replace(/<[^>]*>?/gm,"").substring(0,150))}..."</p>
                      <div class="flex flex-wrap justify-center md:justify-start gap-4 items-center">
                        <span class="text-sm font-medium">by <a href="#/profile/${(C=x.author)==null?void 0:C.username}" class="text-accent hover:underline">${window.sanitize(((S=x.author)==null?void 0:S.display_name)||((h=x.author)==null?void 0:h.username))}</a></span>
                        <a href="#/work/${x.id}" class="px-6 py-2 bg-accent text-bg rounded-full text-sm font-bold hover:shadow-lg transition-all">Read Winning Entry</a>
                      </div>
                    </div>
                  </div>
                </div>
              `:""}

              <div class="bg-surface border border-border rounded-2xl p-8 shadow-sm space-y-6">
                <div class="flex items-center justify-between">
                  <div class="px-3 py-1 bg-accent/10 text-accent rounded-full text-sm font-bold uppercase tracking-widest">This Week's Prompt</div>
                  <div class="text-sm text-text/50">Updated every Friday</div>
                </div>
                <h2 class="text-3xl font-serif font-bold leading-tight">"${window.sanitize(d.prompt_text)}"</h2>
                
                <div class="grid grid-cols-1 md:grid-cols-3 gap-4 pt-4">
                  <div class="p-4 border border-border rounded-xl bg-bg/30">
                    <div class="text-xs text-text/50 uppercase font-bold mb-1">Sprint</div>
                    <div class="text-xl font-serif font-bold">30 Seconds</div>
                    <div class="text-sm text-text/70">Goal: 50+ Words</div>
                    <div class="mt-2 text-accent font-bold">Reward: 30 Quills 🪶</div>
                  </div>
                  <div class="p-4 border border-border rounded-xl bg-bg/30">
                    <div class="text-xs text-text/50 uppercase font-bold mb-1">Flow</div>
                    <div class="text-xl font-serif font-bold">60 Seconds</div>
                    <div class="text-sm text-text/70">Goal: 100+ Words</div>
                    <div class="mt-2 text-accent font-bold">Reward: 20 Ink Pens ✒️</div>
                  </div>
                  <div class="p-4 border border-border rounded-xl bg-bg/30">
                    <div class="text-xs text-text/50 uppercase font-bold mb-1">Marathon</div>
                    <div class="text-xl font-serif font-bold">90 Seconds</div>
                    <div class="text-sm text-text/70">Goal: 200+ Words</div>
                    <div class="mt-2 text-accent font-bold">Reward: 10 Ball Points 🖊️</div>
                  </div>
                </div>

                <div class="pt-8 flex flex-col items-center gap-4">
                  <div class="flex items-center gap-4 text-sm">
                    <div class="flex items-center gap-2">
                      <span class="font-bold text-accent">${o.ink_balance||0}</span> Ink Available
                    </div>
                    ${b?'<div class="text-green-600 font-bold">✨ Premium Pass Active (Free Entries)</div>':""}
                  </div>
                  
                  <div class="flex flex-wrap justify-center gap-4">
                    <button class="btn-start-challenge px-8 py-4 bg-accent text-bg rounded-full font-bold text-lg hover:scale-105 transition-transform shadow-lg" data-time="30" data-target="50">Start 30s Sprint</button>
                    <button class="btn-start-challenge px-8 py-4 bg-accent text-bg rounded-full font-bold text-lg hover:scale-105 transition-transform shadow-lg" data-time="60" data-target="100">Start 60s Flow</button>
                    <button class="btn-start-challenge px-8 py-4 bg-accent text-bg rounded-full font-bold text-lg hover:scale-105 transition-transform shadow-lg" data-time="90" data-target="200">Start 90s Marathon</button>
                  </div>
                  <p class="text-xs text-text/50 italic">Entry Fee: 10 Ink (Free for Premium)</p>
                </div>
              </div>

              <div class="bg-bg border border-border rounded-xl p-6">
                <h3 class="text-xl font-serif font-bold mb-4">How it works</h3>
                <ul class="space-y-3 text-sm text-text/80">
                  <li class="flex gap-3">
                    <span class="text-accent font-bold">1.</span>
                    <span>Choose your challenge level. Each attempt costs 10 Ink unless you have a Spark Pass.</span>
                  </li>
                  <li class="flex gap-3">
                    <span class="text-accent font-bold">2.</span>
                    <span>Once you start, you'll enter the **Zen Chamber**. All distractions will vanish.</span>
                  </li>
                  <li class="flex gap-3">
                    <span class="text-accent font-bold">3.</span>
                    <span>Write as much as you can before the timer runs out. Watch the word counter!</span>
                  </li>
                  <li class="flex gap-3">
                    <span class="text-accent font-bold">4.</span>
                    <span>If you hit the target word count, you'll be rewarded with tokens and your work will be published to the Spark Leaderboard.</span>
                  </li>
                </ul>
              </div>
            </div>
          `,document.querySelectorAll(".btn-start-challenge").forEach(w=>{w.onclick=async()=>{const M=parseInt(w.dataset.time),y=parseInt(w.dataset.target);if(!b&&(o.ink_balance||0)<10){window.showToast("You need at least 10 Ink to start. Visit the Wallet to refill!","error");return}if(!b){const{error:$}=await window.sb.from("users").update({ink_balance:o.ink_balance-10}).eq("id",a);if($){window.showToast("Failed to start challenge.","error");return}}c(M,y)}})},c=(u,v)=>{document.querySelector("aside").style.display="none",document.querySelector("main").classList.remove("flex-1"),document.querySelector("main").classList.add("w-full","h-screen","fixed","inset-0","z-[5000]","bg-bg"),e.innerHTML=`
            <div class="h-full flex flex-col p-4 md:p-12 space-y-8 animate-in fade-in duration-700">
              <div class="flex items-center justify-between max-w-5xl mx-auto w-full">
                <div class="space-y-1">
                  <div class="text-xs text-text/50 uppercase font-bold tracking-widest">Prompt</div>
                  <div class="text-xl font-serif font-bold italic">"${window.sanitize(d.prompt_text)}"</div>
                </div>
                
                <div class="flex items-center gap-8">
                  <div id="word-counter-container" class="text-right">
                    <div class="text-xs text-text/50 uppercase font-bold tracking-widest">Words</div>
                    <div id="word-count" class="text-4xl font-serif font-bold">0 <span class="text-lg text-text/40">/ ${v}</span></div>
                  </div>
                  
                  <div id="timer-container" class="circular-progress">
                    <div class="value-container" id="timer-text">${u}s</div>
                  </div>
                </div>
              </div>

              <div class="flex-1 max-w-5xl mx-auto w-full relative">
                <textarea 
                  id="zen-textarea" 
                  class="w-full h-full bg-transparent border-none focus:ring-0 text-2xl md:text-3xl font-serif leading-relaxed resize-none placeholder:text-text/10"
                  placeholder="The words are waiting..."
                  autofocus
                ></textarea>
                <div class="absolute bottom-4 right-0 text-xs text-text/30 italic">Zen Chamber Active — No distractions, just you and the ink.</div>
              </div>
            </div>
          `;const k=document.getElementById("zen-textarea"),C=document.getElementById("word-count"),S=document.getElementById("timer-text"),h=document.querySelector(".circular-progress");let w=u,M=0;const y=new(window.AudioContext||window.webkitAudioContext),$=()=>{const I=y.createOscillator(),P=y.createGain();I.connect(P),P.connect(y.destination),I.type="sine",I.frequency.setValueAtTime(800,y.currentTime),P.gain.setValueAtTime(.1,y.currentTime),P.gain.exponentialRampToValueAtTime(.01,y.currentTime+.1),I.start(),I.stop(y.currentTime+.1)},j=()=>{const I=y.createOscillator(),P=y.createGain();I.connect(P),P.connect(y.destination),I.type="square",I.frequency.setValueAtTime(400,y.currentTime),P.gain.setValueAtTime(.2,y.currentTime),I.start(),I.stop(y.currentTime+.5)},A=setInterval(()=>{w--,S.textContent=`${w}s`;const I=w/u*360;h.style.background=`conic-gradient(var(--accent) ${I}deg, var(--border) ${I}deg)`,w<=10&&(h.classList.add("shake"),h.style.background=`conic-gradient(#ef4444 ${I}deg, var(--border) ${I}deg)`,S.style.color="#ef4444",$()),w<=0&&(clearInterval(A),j(),p(k.value,M,v,u))},1e3);k.oninput=()=>{const I=k.value.trim();M=I?I.split(/\s+/).length:0,C.innerHTML=`${M} <span class="text-lg text-text/40">/ ${v}</span>`,M>=v?C.classList.add("glow-target"):C.classList.remove("glow-target")}},p=async(u,v,k,C)=>{document.querySelector("aside").style.display="flex",document.querySelector("main").classList.add("flex-1"),document.querySelector("main").classList.remove("w-full","h-screen","fixed","inset-0","z-[5000]","bg-bg");const S=v>=k;if(e.innerHTML=`
            <div class="max-w-2xl mx-auto p-8 text-center space-y-8 animate-in zoom-in duration-500">
              <div class="text-6xl">${S?"🎉":"⏳"}</div>
              <h2 class="text-4xl font-serif font-bold">${S?"Challenge Completed!":"Time is Up!"}</h2>
              
              <div class="bg-surface border border-border rounded-2xl p-8 space-y-4">
                <div class="text-sm text-text/50 uppercase font-bold tracking-widest">Final Stats</div>
                <div class="grid grid-cols-2 gap-8">
                  <div>
                    <div class="text-3xl font-serif font-bold">${v}</div>
                    <div class="text-xs text-text/50 uppercase">Words Written</div>
                  </div>
                  <div>
                    <div class="text-3xl font-serif font-bold">${C}s</div>
                    <div class="text-xs text-text/50 uppercase">Time Limit</div>
                  </div>
                </div>
              </div>

              ${S?`
                <div class="bg-accent/10 border border-accent/20 rounded-xl p-6 text-accent">
                  <h3 class="text-xl font-serif font-bold mb-2">You earned a reward!</h3>
                  <p class="text-sm font-medium">
                    ${C===30?"30 Quills 🪶":C===60?"20 Ink Pens ✒️":"10 Ball Points 🖊️"}
                  </p>
                  <p class="text-xs mt-2 opacity-70">Your work has been published to the Spark feed.</p>
                </div>
              `:`
                <div class="bg-red-500/10 border border-red-500/20 rounded-xl p-6 text-red-600">
                  <h3 class="text-xl font-serif font-bold mb-2">So close!</h3>
                  <p class="text-sm font-medium">You needed ${k} words to earn the reward.</p>
                </div>
              `}

              <div class="flex gap-4 justify-center">
                <button id="btn-spark-back" class="px-6 py-2 border border-border rounded-full font-medium">Back to Spark</button>
                ${S?'<button id="btn-view-work" class="px-6 py-2 bg-accent text-bg rounded-full font-medium">View My Work</button>':""}
              </div>
            </div>
          `,S){const{data:h,error:w}=await window.sb.from("works").insert({author_id:a,title:`Spark: ${d.prompt_text.substring(0,30)}...`,content:u,status:"published",type:"spark"}).select().single();if(w){window.showToast("Failed to submit Spark. Please try again.","error"),console.error("Spark submission error:",w),submitBtn.disabled=!1,submitBtn.textContent="Publish to Spark Board";return}const M=C===30?"quills":C===60?"ink_pens":"ball_points",y=C===30?30:C===60?20:10;await window.sb.from("users").update({[M]:(o[M]||0)+y}).eq("id",a),document.getElementById("btn-view-work")&&(document.getElementById("btn-view-work").onclick=()=>{window.location.hash=`#/work/${h.id}`})}document.getElementById("btn-spark-back").onclick=()=>window.renderSpark()};f()};window.renderSparkBoard=async()=>{var p,_;const e=document.getElementById("app-content");e.innerHTML='<div class="p-8 text-center"><div class="animate-pulse text-accent">Loading Spark Board...</div></div>';const{data:s}=await window.sb.auth.getSession(),a=(p=s==null?void 0:s.session)==null?void 0:p.user;let o=!1;if(a){const{data:n}=await window.sb.from("users").select("role").eq("id",a.id).maybeSingle();o=(n==null?void 0:n.role)==="admin"}const[{data:i,error:t},{data:g}]=await Promise.all([window.sb.from("works").select("*, author:author_id(username, display_name, avatar_url, role)").eq("type","spark").eq("status","published").order("created_at",{ascending:!1}),window.sb.from("site_config").select("*")]);if(t){console.error("Spark Board Error:",t),e.innerHTML=`<div class="p-8 text-center text-red-500">Failed to load Spark Board: ${t.message||JSON.stringify(t)}</div>`;return}const x=(_=g==null?void 0:g.find(n=>n.key==="spark_winner_id"))==null?void 0:_.value,d=(i||[]).map(n=>n.id);let b={},f={};if(d.length>0){const[{data:n},{data:u}]=await Promise.all([window.sb.from("likes").select("work_id").in("work_id",d),window.sb.from("comments").select("work_id").in("work_id",d)]);n==null||n.forEach(v=>{b[v.work_id]=(b[v.work_id]||0)+1}),u==null||u.forEach(v=>{f[v.work_id]=(f[v.work_id]||0)+1})}const c=(i||[]).map(n=>{const u=b[n.id]||0,v=f[n.id]||0,k=n.id===x;return{...n,likes_count:u,comments_count:v,is_winner:k}});c.sort((n,u)=>u.likes_count+u.comments_count-(n.likes_count+n.comments_count)),e.innerHTML=`
          <div class="max-w-5xl mx-auto p-4 md:p-8 space-y-12">
            <header class="text-center space-y-4">
              <h1 class="text-4xl md:text-6xl font-serif font-bold text-accent">Spark Board</h1>
              <p class="text-xl text-text/70 italic">The most resonant voices of the week.</p>
            </header>

            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
              ${c.map((n,u)=>{var k,C;const v=`<a href="#/profile/${(k=n.author)==null?void 0:k.username}" class="block w-full h-full">${window.renderAvatar(n.author,"w-full h-full")}</a>`;return`
                  <div class="bg-surface border ${n.is_winner?"border-accent shadow-lg shadow-accent/5 scale-105 z-10":"border-border"} rounded-2xl p-6 relative flex flex-col transition-transform hover:scale-[1.02]">
                    ${n.is_winner?`
                      <div class="absolute -top-3 -right-3 bg-accent text-bg px-3 py-1 rounded-full text-[10px] font-bold uppercase tracking-widest shadow-lg">
                        🏆 Weekly Winner
                      </div>
                    `:`
                      <div class="absolute -top-3 -left-3 bg-bg border border-border w-8 h-8 rounded-full flex items-center justify-center text-xs font-bold text-text/40">
                        #${u+1}
                      </div>
                    `}
                    
                    <div class="flex items-center gap-3 mb-4">
                      <div class="w-8 h-8 rounded-full bg-accent2/20 flex items-center justify-center text-xs font-bold overflow-hidden">
                        ${v}
                      </div>
                      <a href="#/profile/${(C=n.author)==null?void 0:C.username}" class="text-sm font-bold hover:text-accent transition-colors">${window.renderUserName(n.author)}</a>
                    </div>

                    <h3 class="text-xl font-serif font-bold mb-3 line-clamp-2">${window.sanitize(n.title)}</h3>
                    <p class="text-sm text-text/60 line-clamp-3 mb-6 italic leading-relaxed">"${window.sanitize(n.content.replace(/<[^>]*>?/gm,"").substring(0,120))}..."</p>
                    
                    <div class="mt-auto pt-4 border-t border-border/30 flex justify-between items-center">
                      <div class="flex gap-4 text-xs font-bold text-text/40">
                        <span>❤️ ${n.likes_count}</span>
                        <span>💬 ${n.comments_count}</span>
                      </div>
                      <div class="flex items-center gap-3">
                        ${o?`<button onclick="event.stopPropagation(); window.deleteWork('${n.id}')" class="text-xs text-red-500 hover:text-red-600 font-bold" title="Admin: Delete Post">Delete</button>`:""}
                        <a href="#/work/${n.id}" class="text-accent text-xs font-bold hover:underline">Read Entry →</a>
                      </div>
                    </div>
                  </div>
                `}).join("")}
            </div>

            ${c.length===0?`
              <div class="text-center py-20 border-2 border-dashed border-border rounded-3xl">
                <div class="text-6xl mb-4">🪶</div>
                <h3 class="text-2xl font-serif font-bold text-text/40">The board is waiting for its first spark.</h3>
                <a href="#/spark" class="mt-4 inline-block text-accent font-bold hover:underline">Start the Challenge →</a>
              </div>
            `:""}
          </div>
        `};window.loadRoute();window.renderWallet=async()=>{var g;const e=document.getElementById("app-content");e.innerHTML='<div class="p-8 text-center"><div class="animate-pulse text-accent">Opening your wallet...</div></div>';const{data:s}=await window.sb.auth.getSession();if(!((g=s==null?void 0:s.session)!=null&&g.user)){e.innerHTML='<div class="p-8 text-center"><h2 class="text-2xl font-serif">Please sign in to access your wallet</h2></div>';return}const a=s.session.user.id,o=async()=>{const{data:x}=await window.sb.from("users").select("*").eq("id",a).single(),{data:d}=await window.sb.from("payment_requests").select("*").eq("user_id",a).eq("status","pending"),b=x.premium_until&&new Date(x.premium_until)>new Date,f=x.premium_until?new Date(x.premium_until).toLocaleDateString():null;e.innerHTML=`
            <div class="max-w-4xl mx-auto p-4 md:p-8 space-y-8">
              <header class="flex items-center justify-between">
                <div>
                  <h1 class="text-3xl font-serif font-bold">Inkroot Wallet</h1>
                  <p class="text-text/60">Manage your Ink and Spark Pass</p>
                </div>
                <div class="text-right">
                  <div class="text-xs text-text/50 uppercase tracking-widest mb-1">Current Balance</div>
                  <div class="text-4xl font-serif font-bold text-accent">${x.ink_balance||0} <span class="text-sm font-sans text-text/60">Ink</span></div>
                </div>
              </header>

              <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                <!-- Status Cards -->
                <div class="space-y-6">
                  <div class="bg-surface border border-border rounded-xl p-6 shadow-sm">
                    <h3 class="text-lg font-serif font-bold mb-4 flex items-center gap-2">
                      <span class="w-2 h-2 rounded-full ${b?"bg-green-500":"bg-text/20"}"></span>
                      Spark Pass Status
                    </h3>
                    ${b?`
                      <div class="text-green-600 font-medium mb-1">Active Premium Member</div>
                      <div class="text-sm text-text/60">Valid until: ${f}</div>
                      <div class="mt-4 text-xs text-text/50 italic">Enjoy unlimited free entries to Spark challenges!</div>
                    `:`
                      <div class="text-text/50 mb-4">You don't have an active Spark Pass.</div>
                      <button id="btn-buy-premium" class="w-full py-2 bg-accent2 text-bg rounded font-medium hover:opacity-90 transition-opacity">Get Spark Pass (Rs. 500)</button>
                    `}
                  </div>

                  <div class="bg-surface border border-border rounded-xl p-6 shadow-sm">
                    <h3 class="text-lg font-serif font-bold mb-4">Your Tokens</h3>
                    <div class="grid grid-cols-3 gap-4">
                      <div class="text-center">
                        <div class="text-2xl mb-1">🪶</div>
                        <div class="font-bold">${x.quills||0}</div>
                        <div class="text-[10px] text-text/50 uppercase">Quills</div>
                      </div>
                      <div class="text-center">
                        <div class="text-2xl mb-1">✒️</div>
                        <div class="font-bold">${x.ink_pens||0}</div>
                        <div class="text-[10px] text-text/50 uppercase">Ink Pens</div>
                      </div>
                      <div class="text-center">
                        <div class="text-2xl mb-1">🖊️</div>
                        <div class="font-bold">${x.ball_points||0}</div>
                        <div class="text-[10px] text-text/50 uppercase">Ball Points</div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- Purchase Section -->
                <div class="bg-surface border border-border rounded-xl p-6 shadow-sm">
                  <h3 class="text-xl font-serif font-bold mb-6">Refill Ink</h3>
                  <div class="space-y-4">
                    <button class="btn-buy-ink w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-amount="10" data-price="100">
                      <div>
                        <div class="font-bold group-hover:text-accent transition-colors">10 Ink</div>
                        <div class="text-xs text-text/50">Perfect for 1 Spark entry</div>
                      </div>
                      <div class="text-lg font-bold">Rs. 100</div>
                    </button>
                    <button class="btn-buy-ink w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-amount="50" data-price="450">
                      <div>
                        <div class="font-bold group-hover:text-accent transition-colors">50 Ink</div>
                        <div class="text-xs text-text/50">Save Rs. 50</div>
                      </div>
                      <div class="text-lg font-bold">Rs. 450</div>
                    </button>
                    <button class="btn-buy-ink w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-amount="100" data-price="800">
                      <div>
                        <div class="font-bold group-hover:text-accent transition-colors">100 Ink</div>
                        <div class="text-xs text-text/50">Save Rs. 200</div>
                      </div>
                      <div class="text-lg font-bold">Rs. 800</div>
                    </button>
                  </div>
                </div>
              </div>

              <!-- Pending Requests -->
              ${(d==null?void 0:d.length)>0?`
                <div class="bg-accent2/5 border border-accent2/20 rounded-xl p-6">
                  <h3 class="text-lg font-serif font-bold mb-4 text-accent2">Pending Verifications</h3>
                  <div class="space-y-3">
                    ${d.map(p=>`
                      <div class="flex items-center justify-between text-sm bg-bg/50 p-3 rounded border border-border">
                        <div>
                          <span class="font-bold uppercase">${p.request_type}</span> — Rs. ${p.amount_rs} via ${p.payment_method}
                          <div class="text-xs text-text/50">TID: ${p.transaction_id}</div>
                        </div>
                        <div class="text-accent2 animate-pulse font-medium italic">Verifying...</div>
                      </div>
                    `).join("")}
                  </div>
                </div>
              `:""}

              <!-- Inkwell Store -->
              <div class="mt-12 pt-8 border-t border-border">
                <h2 class="text-3xl font-serif font-bold mb-2">The Inkwell Store</h2>
                <p class="text-text/60 mb-8">Spend your hard-earned tokens on aesthetic upgrades and community influence.</p>
                
                <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
                  <!-- Quills Section -->
                  <div class="bg-surface border border-border rounded-xl p-6 shadow-sm">
                    <div class="flex items-center gap-3 mb-6">
                      <div class="text-3xl">🪶</div>
                      <div>
                        <h3 class="text-xl font-serif font-bold">The Artisan's Tool</h3>
                        <div class="text-sm text-text/50">Aesthetic & Expression</div>
                      </div>
                    </div>
                    <div class="space-y-4">
                      <button class="btn-buy-quill w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-type="paper_texture" data-value="parchment" data-cost="100" data-name="Aged Parchment">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Aged Parchment</div>
                          <div class="text-xs text-text/50">Paper Texture</div>
                        </div>
                        <div class="text-sm font-bold text-accent">100 🪶</div>
                      </button>
                      <button class="btn-buy-quill w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-type="paper_texture" data-value="midnight" data-cost="100" data-name="Midnight Blue">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Midnight Blue</div>
                          <div class="text-xs text-text/50">Paper Texture</div>
                        </div>
                        <div class="text-sm font-bold text-accent">100 🪶</div>
                      </button>
                      <button class="btn-buy-quill w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-type="custom_font" data-value="typewriter" data-cost="50" data-name="Typewriter">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Typewriter</div>
                          <div class="text-xs text-text/50">Signature Font</div>
                        </div>
                        <div class="text-sm font-bold text-accent">50 🪶</div>
                      </button>
                      <button class="btn-buy-quill w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-type="custom_font" data-value="handwritten" data-cost="50" data-name="Handwritten">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Handwritten</div>
                          <div class="text-xs text-text/50">Signature Font</div>
                        </div>
                        <div class="text-sm font-bold text-accent">50 🪶</div>
                      </button>
                    </div>
                  </div>
                  
                  <!-- Ink Pens Section -->
                  <div class="bg-surface border border-border rounded-xl p-6 shadow-sm">
                    <div class="flex items-center gap-3 mb-6">
                      <div class="text-3xl">✒️</div>
                      <div>
                        <h3 class="text-xl font-serif font-bold">The Editor's Tool</h3>
                        <div class="text-sm text-text/50">Curation & Community</div>
                      </div>
                    </div>
                    <div class="space-y-4">
                      <button class="btn-buy-store w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-currency="ink_pens" data-type="read_next" data-value="true" data-cost="10" data-name="Read Next Injection">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Read Next Injection</div>
                          <div class="text-xs text-text/50">Appear at bottom of similar works</div>
                        </div>
                        <div class="text-sm font-bold text-accent">10 ✒️</div>
                      </button>
                    </div>
                  </div>

                  <!-- Ball Points Section -->
                  <div class="bg-surface border border-border rounded-xl p-6 shadow-sm">
                    <div class="flex items-center gap-3 mb-6">
                      <div class="text-3xl">🖊️</div>
                      <div>
                        <h3 class="text-xl font-serif font-bold">The Master's Tool</h3>
                        <div class="text-sm text-text/50">Visibility & Status</div>
                      </div>
                    </div>
                    <div class="space-y-4">
                      <button class="btn-buy-store w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-currency="ball_points" data-type="hero_marquee" data-value="true" data-cost="2" data-name="Hero Marquee (24h)">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Hero Marquee (24h)</div>
                          <div class="text-xs text-text/50">Top of Discover feed</div>
                        </div>
                        <div class="text-sm font-bold text-accent">2 🖊️</div>
                      </button>
                      <button class="btn-buy-store w-full p-4 border border-border rounded-lg hover:border-accent transition-colors text-left flex items-center justify-between group" data-currency="ball_points" data-type="cta_link" data-value="true" data-cost="3" data-name="Custom CTA Link">
                        <div>
                          <div class="font-bold group-hover:text-accent transition-colors">Custom CTA Link</div>
                          <div class="text-xs text-text/50">Add a button to your work</div>
                        </div>
                        <div class="text-sm font-bold text-accent">3 🖊️</div>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          `;const c=document.getElementById("btn-buy-premium");c&&(c.onclick=()=>t("premium",500,null)),document.querySelectorAll(".btn-buy-ink").forEach(p=>{p.onclick=()=>{const _=p.dataset.amount,n=p.dataset.price;t("ink",n,_)}}),document.querySelectorAll(".btn-buy-quill, .btn-buy-store").forEach(p=>{p.onclick=()=>{const _=p.dataset.type,n=p.dataset.value,u=parseInt(p.dataset.cost),v=p.dataset.name,k=p.dataset.currency||"quills";if((x[k]||0)<u){const C=k.replace("_"," ").replace(/\b\w/g,S=>S.toUpperCase());window.showToast(`You need ${u} ${C} to buy this. Keep writing!`,"error");return}i(k,_,n,u,v,x)}})},i=async(x,d,b,f,c,p)=>{const _=document.createElement("div");_.className="fixed inset-0 bg-black/70 flex items-center justify-center z-[3000] p-4 backdrop-blur-sm";const{data:n}=await window.sb.from("works").select("id, title").eq("author_id",p.id).eq("status","published").order("created_at",{ascending:!1}),u=x==="quills"?"🪶":x==="ink_pens"?"✒️":"🖊️",v=x.replace("_"," ").replace(/\b\w/g,C=>C.toUpperCase());_.innerHTML=`
            <div class="bg-bg border border-border rounded-xl p-8 max-w-md w-full shadow-2xl relative">
              <button id="close-store-modal" class="absolute top-4 right-4 text-text/50 hover:text-text">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
              </button>
              
              <div class="text-center mb-6">
                <div class="text-4xl mb-2">${u}</div>
                <h2 class="text-2xl font-serif font-bold">Apply ${c}</h2>
                <p class="text-text/60">Cost: <span class="text-accent font-bold">${f} ${v}</span></p>
              </div>
              
              ${n&&n.length>0?`
                <div class="space-y-4">
                  <div>
                    <label class="block text-sm font-medium mb-2">Select a published work to apply this to:</label>
                    <select id="store-work-select" class="w-full p-3 bg-surface border border-border rounded-lg">
                      ${n.map(C=>`<option value="${C.id}">${C.title}</option>`).join("")}
                    </select>
                  </div>
                  
                  ${d==="cta_link"?`
                    <div>
                      <label class="block text-sm font-medium mb-2">Button Text (e.g., "Support me on Patreon")</label>
                      <input type="text" id="cta-text-input" class="w-full p-3 bg-surface border border-border rounded-lg" placeholder="Support me on Patreon" required>
                    </div>
                    <div>
                      <label class="block text-sm font-medium mb-2">Destination URL</label>
                      <input type="url" id="cta-link-input" class="w-full p-3 bg-surface border border-border rounded-lg" placeholder="https://patreon.com/..." required>
                    </div>
                  `:""}

                  <button id="confirm-store-purchase" class="w-full py-3 bg-accent text-bg rounded-lg font-bold hover:opacity-90 transition-opacity">
                    Confirm & Apply
                  </button>
                </div>
              `:`
                <div class="text-center py-8 text-text/50">
                  <p>You don't have any published works yet.</p>
                  <a href="#/write" class="text-accent hover:underline mt-2 inline-block">Start writing</a>
                </div>
              `}
            </div>
          `,document.body.appendChild(_),document.getElementById("close-store-modal").onclick=()=>_.remove();const k=document.getElementById("confirm-store-purchase");k&&(k.onclick=async()=>{const C=document.getElementById("store-work-select").value;let S=null,h=null;if(d==="cta_link"&&(S=document.getElementById("cta-text-input").value,h=document.getElementById("cta-link-input").value,!S||!h)){window.showToast("Please fill in both CTA fields.","error");return}k.disabled=!0,k.innerHTML="Applying...";try{const w=p[x]-f,M={};M[x]=w,await window.sb.from("users").update(M).eq("id",p.id);const y={};if(d==="paper_texture"||d==="custom_font")y[d]=b;else if(d==="hero_marquee"){const $=new Date;$.setHours($.getHours()+24),y.hero_until=$.toISOString()}else if(d==="read_next"){const $=new Date;$.setHours($.getHours()+24),y.read_next_until=$.toISOString()}else d==="cta_link"&&(y.cta_link=h,y.cta_text=S);await window.sb.from("works").update(y).eq("id",C),window.showToast(`Successfully applied ${c}!`,"success"),_.remove(),o()}catch(w){console.error(w),window.showToast("Failed to apply upgrade.","error"),k.disabled=!1,k.innerHTML="Confirm & Apply"}})},t=(x,d,b)=>{const f=document.createElement("div");f.className="fixed inset-0 bg-black/70 flex items-center justify-center z-[3000] p-4 backdrop-blur-sm",f.innerHTML=`
            <div class="bg-bg border border-border rounded-xl p-8 max-w-md w-full shadow-2xl relative">
              <button id="close-payment-modal" class="absolute top-4 right-4 text-text/50 hover:text-text">
                <svg class="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M6 18L18 6M6 6l12 12"></path></svg>
              </button>
              
              <h2 class="text-2xl font-serif font-bold mb-2">Complete Payment</h2>
              <p class="text-text/60 mb-6">Purchase: <span class="text-text font-bold">${x==="premium"?"Spark Pass":b+" Ink"}</span> for <span class="text-accent font-bold">Rs. ${d}</span></p>
              
              <div class="bg-surface p-4 rounded-lg border border-border mb-6 space-y-3">
                <div class="text-xs text-text/50 uppercase font-bold tracking-wider">Send Payment To:</div>
                <div class="flex items-center justify-between">
                  <span class="font-medium">JazzCash / NayaPay</span>
                  <span class="text-accent font-mono font-bold">0310-6590695</span>
                </div>
                <div class="flex items-center justify-between">
                  <span class="font-medium">Account Name</span>
                  <span class="text-accent font-bold">Faez Ahmad</span>
                </div>
              </div>

              <form id="payment-form" class="space-y-4">
                <div>
                  <label class="block text-sm font-medium mb-1">Payment Method</label>
                  <select id="pay-method" class="w-full p-2 bg-surface border border-border rounded" required>
                    <option value="jazzcash">JazzCash</option>
                    <option value="nayapay">NayaPay</option>
                  </select>
                </div>
                <div>
                  <label class="block text-sm font-medium mb-1">Transaction ID (TID)</label>
                  <input type="text" id="pay-tid" class="w-full p-2 bg-surface border border-border rounded font-mono" placeholder="e.g. 0123456789" required>
                  <p class="text-[10px] text-text/50 mt-1">Check your SMS or App for the TID after transfer.</p>
                </div>
                <button type="submit" id="btn-submit-payment" class="w-full py-3 bg-accent text-bg rounded-lg font-bold hover:opacity-90 transition-opacity">Submit for Verification</button>
              </form>
            </div>
          `,document.body.appendChild(f),document.getElementById("close-payment-modal").onclick=()=>f.remove(),document.getElementById("payment-form").onsubmit=async c=>{c.preventDefault();const p=document.getElementById("btn-submit-payment");p.disabled=!0,p.textContent="Submitting...";const _=document.getElementById("pay-method").value,n=document.getElementById("pay-tid").value;try{const{error:u}=await window.sb.from("payment_requests").insert({user_id:a,amount_rs:d,ink_amount:b,request_type:x,payment_method:_,transaction_id:n,status:"pending"});if(u)throw u.code==="23505"?new Error("This Transaction ID has already been submitted."):u;window.showToast("Payment submitted! We will verify it shortly.","success"),f.remove(),await o()}catch(u){window.showToast(u.message,"error"),p.disabled=!1,p.textContent="Submit for Verification"}}};await o()};window.renderSupportChat=async()=>{const e=document.getElementById("app-content"),s=(await window.sb.auth.getUser()).data.user;if(!s){e.innerHTML='<div class="p-8 text-center">Please <a href="#/profile" class="text-accent underline">sign in</a> to use support chat.</div>';return}e.innerHTML=`
          <div class="max-w-4xl mx-auto p-4 md:p-8 h-[calc(100vh-64px)] flex flex-col">
            <header class="mb-6 flex justify-between items-center">
              <div>
                <h1 class="text-3xl font-serif font-bold text-accent">Support Chat</h1>
                <p class="text-text/60">Have a concern or report? Chat with the admin here.</p>
              </div>
              <div id="ticket-status-badge"></div>
            </header>

            <div class="flex-1 bg-surface border border-border rounded-xl shadow-sm flex flex-col overflow-hidden">
              <!-- Chat History -->
              <div id="chat-history" class="flex-1 overflow-y-auto p-4 space-y-4 bg-bg/30">
                <div class="text-center text-text/40 py-8">Loading chat history...</div>
              </div>

              <!-- Input Area -->
              <div class="p-4 border-t border-border bg-surface">
                <form id="chat-form" class="flex gap-2">
                  <input type="text" id="chat-input" placeholder="Type your message..." class="flex-1 p-3 bg-bg border border-border rounded-lg focus:outline-none focus:border-accent" required>
                  <button type="submit" class="px-6 py-3 bg-accent text-bg rounded-lg font-bold hover:opacity-90 transition-opacity">Send</button>
                </form>
              </div>
            </div>
          </div>
        `;const a=document.getElementById("chat-history"),o=document.getElementById("chat-form"),i=document.getElementById("chat-input"),t=document.getElementById("ticket-status-badge");let{data:g}=await window.sb.from("support_tickets").select("*").eq("user_id",s.id).maybeSingle();const x=p=>{if(!p){t.innerHTML="";return}const _={pending:"bg-yellow-100 text-yellow-800 border-yellow-200",resolved:"bg-green-100 text-green-800 border-green-200"};t.innerHTML=`<span class="px-3 py-1 rounded-full border text-xs font-bold uppercase tracking-wider ${_[p]||_.pending}">${p}</span>`};g&&x(g.status);const d=async()=>{if(!g){a.innerHTML='<div class="text-center text-text/40 py-8">Start a conversation by typing a message below.</div>';return}const{data:p,error:_}=await window.sb.from("support_messages").select("*").eq("ticket_id",g.id).order("created_at",{ascending:!0});if(_){a.innerHTML=`<div class="text-center text-red-500 p-4">Error loading messages: ${_.message}</div>`;return}p&&p.length>0?(a.innerHTML=p.map(n=>`
              <div class="flex ${n.sender_role==="admin"?"justify-start":"justify-end"}">
                <div class="max-w-[80%] p-3 rounded-2xl ${n.sender_role==="admin"?"bg-surface border border-border rounded-tl-none":"bg-accent text-bg rounded-tr-none"}">
                  <div class="text-xs ${n.sender_role==="admin"?"text-text/40":"text-bg/60"} mb-1">${n.sender_role==="admin"?"Admin":"You"}</div>
                  <div class="text-sm">${n.message||n.content||""}</div>
                  <div class="text-[10px] ${n.sender_role==="admin"?"text-text/30":"text-bg/40"} mt-1 text-right">${new Date(n.created_at).toLocaleTimeString([],{hour:"2-digit",minute:"2-digit"})}</div>
                </div>
              </div>
            `).join(""),a.scrollTop=a.scrollHeight):a.innerHTML='<div class="text-center text-text/40 py-8">No messages yet. Send one to start!</div>'};d();let b=null;const f=p=>{b&&b.unsubscribe(),b=window.sb.channel(`ticket-${p}`).on("postgres_changes",{event:"INSERT",schema:"public",table:"support_messages",filter:`ticket_id=eq.${p}`},()=>{d()}).on("postgres_changes",{event:"UPDATE",schema:"public",table:"support_tickets",filter:`id=eq.${p}`},_=>{x(_.new.status)}).subscribe()};g&&f(g.id),o.onsubmit=async p=>{p.preventDefault();const _=i.value.trim();if(!_)return;if(i.value="",!g){const{data:u,error:v}=await window.sb.from("support_tickets").insert({user_id:s.id,status:"pending"}).select().single();if(v){window.handleError(v,"Failed to start support ticket.");return}g=u,x(g.status),f(g.id)}const{error:n}=await window.sb.from("support_messages").insert({ticket_id:g.id,user_id:s.id,message:_,sender_role:"user"});n?window.handleError(n,"Failed to send message."):(await window.sb.from("support_tickets").update({status:"pending",updated_at:new Date().toISOString()}).eq("id",g.id),d())};const c=()=>{window.location.hash!=="#/support"&&(b.unsubscribe(),window.removeEventListener("hashchange",c))};window.addEventListener("hashchange",c)};const Ie=async()=>{const{data:e}=await window.sb.from("support_tickets").select("*, user:user_id(username, display_name)").order("updated_at",{ascending:!1}).limit(50);return`
          <section class="space-y-6">
            <div class="flex items-center justify-between">
              <h2 class="text-2xl font-serif font-bold">Support Tickets</h2>
              <div class="text-sm text-text/60">${(e==null?void 0:e.length)||0} active tickets</div>
            </div>

            <div class="grid md:grid-cols-3 gap-6 h-[600px]">
              <!-- Ticket List -->
              <div class="bg-surface border border-border rounded-lg overflow-hidden flex flex-col">
                <div class="p-4 border-b border-border font-bold bg-bg/30">Active Tickets</div>
                <div class="flex-1 overflow-y-auto" id="admin-ticket-list">
                  ${(e||[]).map(s=>{var a,o;return`
                    <button class="w-full p-4 border-b border-border text-left hover:bg-bg transition-colors btn-select-ticket" data-id="${s.id}">
                      <div class="flex justify-between items-start mb-1">
                        <span class="font-bold text-sm">${((a=s.user)==null?void 0:a.display_name)||((o=s.user)==null?void 0:o.username)||"Unknown User"}</span>
                        <span class="text-[10px] px-2 py-0.5 rounded-full border ${s.status==="pending"?"bg-yellow-100 text-yellow-800 border-yellow-200":"bg-green-100 text-green-800 border-green-200"} uppercase font-bold">${s.status}</span>
                      </div>
                      <div class="text-xs text-text/60 truncate">User ID: ${s.user_id.slice(0,8)}...</div>
                      <div class="text-[10px] text-text/40 mt-2">${new Date(s.created_at).toLocaleDateString()}</div>
                    </button>
                  `}).join("")}
                </div>
              </div>

              <!-- Chat Window -->
              <div class="md:col-span-2 bg-surface border border-border rounded-lg flex flex-col overflow-hidden" id="admin-chat-container">
                <div class="flex-1 flex items-center justify-center text-text/40 italic">
                  Select a ticket to start chatting
                </div>
              </div>
            </div>
          </section>
        `};window.renderMessages=async e=>{var d;const s=document.getElementById("app-content");s.innerHTML='<div class="p-8 text-center"><div class="animate-pulse text-accent">Loading Messages...</div></div>';const{data:a}=await window.sb.auth.getSession(),o=(d=a==null?void 0:a.session)==null?void 0:d.user;if(!o){s.innerHTML='<div class="p-8 text-center"><h2 class="text-2xl font-serif">Please sign in to view messages</h2></div>';return}const{data:i,error:t}=await window.sb.from("conversations").select("*, initiator:initiator_id(id, username, display_name, avatar_url), receiver:receiver_id(id, username, display_name, avatar_url)").or(`initiator_id.eq.${o.id},receiver_id.eq.${o.id}`).order("updated_at",{ascending:!1});if(t){window.handleError(t,"Failed to load conversations.");return}const{data:g}=await window.sb.from("user_blocks").select("*").or(`blocker_id.eq.${o.id},blocked_id.eq.${o.id}`),x=new Set((g==null?void 0:g.map(b=>b.blocker_id===o.id?b.blocked_id:b.blocker_id))||[]);if(s.innerHTML=`
          <div class="max-w-6xl mx-auto p-4 md:p-8 h-[calc(100vh-80px)] flex flex-col">
            <h1 class="text-3xl font-serif font-bold mb-6 shrink-0">Messages</h1>
            
            <div class="flex-1 bg-surface border border-border rounded-xl overflow-hidden flex flex-col md:flex-row shadow-sm min-h-0">
              
              <!-- Sidebar: Conversations List -->
              <div class="w-full md:w-1/3 border-r border-border flex flex-col ${e?"hidden md:flex":"flex"}">
                <div class="p-4 border-b border-border bg-bg/30 font-bold">Conversations</div>
                <div class="flex-1 overflow-y-auto" id="conv-list">
                  ${i.length===0?'<div class="p-8 text-center text-text/50 text-sm">No messages yet.</div>':""}
                  ${i.map(b=>{const f=b.initiator_id===o.id?b.receiver:b.initiator,c=x.has(f.id),p=b.id===e,_=f.avatar_url?`<img src="${f.avatar_url}" class="w-full h-full object-cover" referrerPolicy="no-referrer">`:`<div class="w-full h-full bg-accent2 text-bg flex items-center justify-center font-bold text-xs">${(f.display_name||f.username||"?").substring(0,2).toUpperCase()}</div>`;return`
                      <a href="#/messages/${b.id}" class="flex items-center gap-3 p-4 border-b border-border hover:bg-bg transition-colors ${p?"bg-bg border-l-4 border-l-accent":""} ${c?"opacity-50":""}">
                        <div class="w-10 h-10 rounded-full overflow-hidden shrink-0 border border-border">
                          ${_}
                        </div>
                        <div class="flex-1 min-w-0">
                          <div class="flex justify-between items-baseline mb-1">
                            <h3 class="font-bold text-sm truncate">${window.sanitize(f.display_name||f.username)}</h3>
                            <span class="text-[10px] text-text/40 shrink-0">${new Date(b.updated_at).toLocaleDateString()}</span>
                          </div>
                          <div class="text-xs text-text/60 truncate flex items-center gap-2">
                            ${b.status==="pending"?'<span class="px-1.5 py-0.5 bg-yellow-100 text-yellow-800 rounded text-[8px] uppercase font-bold">Pending</span>':""}
                            ${b.status==="rejected"?'<span class="px-1.5 py-0.5 bg-red-100 text-red-800 rounded text-[8px] uppercase font-bold">Declined</span>':""}
                            ${c?'<span class="px-1.5 py-0.5 bg-red-100 text-red-800 rounded text-[8px] uppercase font-bold">Blocked</span>':""}
                          </div>
                        </div>
                      </a>
                    `}).join("")}
                </div>
              </div>

              <!-- Main: Chat Window -->
              <div class="flex-1 flex flex-col bg-bg/10 ${e?"flex":"hidden md:flex"} relative">
                ${e?`
                  <div id="chat-header" class="p-4 border-b border-border bg-surface flex justify-between items-center shrink-0">
                    <div class="flex items-center gap-3">
                      <a href="#/messages" class="md:hidden p-2 -ml-2 text-text/60 hover:text-text">
                        <svg class="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 19l-7-7 7-7"></path></svg>
                      </a>
                      <div id="chat-title" class="font-bold">Loading...</div>
                    </div>
                    <button id="btn-block-user" class="text-xs text-red-500 hover:underline hidden">Block User</button>
                  </div>
                  
                  <div id="chat-messages" class="flex-1 overflow-y-auto p-4 space-y-4">
                    <div class="text-center text-accent animate-pulse">Loading messages...</div>
                  </div>
                  
                  <div id="chat-actions" class="p-4 border-t border-border bg-surface shrink-0 hidden">
                    <!-- Dynamic actions (Accept/Reject or Input) -->
                  </div>
                `:`
                  <div class="flex-1 flex items-center justify-center text-text/40 italic">
                    Select a conversation to start messaging
                  </div>
                `}
              </div>
            </div>
          </div>
        `,e){const b=i.find(v=>v.id===e);if(!b){document.getElementById("chat-messages").innerHTML='<div class="text-center text-red-500">Conversation not found.</div>';return}const f=b.initiator_id===o.id?b.receiver:b.initiator,c=b.initiator_id===o.id,p=x.has(f.id);document.getElementById("chat-title").innerHTML=`
            <a href="#/profile/${f.username}" class="hover:text-accent transition-colors">${window.sanitize(f.display_name||f.username)}</a>
          `;const _=document.getElementById("btn-block-user");_.classList.remove("hidden"),_.textContent=p?"Unblock User":"Block User",_.onclick=async()=>{_.disabled=!0;try{p?(await window.sb.from("user_blocks").delete().eq("blocker_id",o.id).eq("blocked_id",f.id),window.showToast("User unblocked.","success")):(await window.sb.from("user_blocks").insert({blocker_id:o.id,blocked_id:f.id}),window.showToast("User blocked.","success")),window.renderMessages(e)}catch(v){window.handleError(v,"Failed to update block status."),_.disabled=!1}};const n=document.getElementById("chat-actions");n.classList.remove("hidden"),p?n.innerHTML='<div class="text-center text-red-500 text-sm py-2">You have blocked this user or they have blocked you.</div>':b.status==="rejected"?n.innerHTML='<div class="text-center text-red-500 text-sm py-2">This message request was declined.</div>':b.status==="pending"&&!c?(n.innerHTML=`
              <div class="flex flex-col items-center gap-2">
                <div class="text-sm text-text/70 mb-2">${window.sanitize(f.display_name||f.username)} wants to send you a message.</div>
                <div class="flex gap-4 w-full max-w-xs">
                  <button id="btn-reject-conv" class="flex-1 py-2 border border-red-200 text-red-600 bg-red-50 rounded hover:bg-red-100 transition-colors font-medium text-sm">Decline</button>
                  <button id="btn-accept-conv" class="flex-1 py-2 bg-accent text-bg rounded hover:opacity-90 transition-opacity font-medium text-sm">Accept</button>
                </div>
              </div>
            `,document.getElementById("btn-accept-conv").onclick=async()=>{await window.sb.from("conversations").update({status:"accepted"}).eq("id",e),window.renderMessages(e)},document.getElementById("btn-reject-conv").onclick=async()=>{await window.sb.from("conversations").update({status:"rejected"}).eq("id",e),window.renderMessages(e)}):(n.innerHTML=`
              ${b.status==="pending"?`<div class="text-center text-text/50 text-[10px] uppercase font-bold tracking-wider mb-3">Waiting for ${window.sanitize(f.display_name||f.username)} to accept</div>`:""}
              <form id="dm-form" class="flex gap-2">
                <input type="text" id="dm-input" placeholder="Type a message..." required class="flex-1 px-4 py-2 rounded-full bg-bg border border-border focus:outline-none focus:border-accent text-text text-sm">
                <button type="submit" class="w-10 h-10 rounded-full bg-accent text-bg flex items-center justify-center hover:opacity-90 transition-opacity shrink-0">
                  <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 19l9 2-9-18-9 18 9-2zm0 0v-8"></path></svg>
                </button>
              </form>
            `,document.getElementById("dm-form").onsubmit=async v=>{v.preventDefault();const k=document.getElementById("dm-input"),C=k.value.trim();if(C){k.value="";try{await window.sb.from("direct_messages").insert({conversation_id:e,sender_id:o.id,message:C}),await window.sb.from("conversations").update({updated_at:new Date().toISOString()}).eq("id",e)}catch(S){window.handleError(S,"Failed to send message.")}}});const u=async()=>{const{data:v,error:k}=await window.sb.from("direct_messages").select("*").eq("conversation_id",e).order("created_at",{ascending:!0});if(k){document.getElementById("chat-messages").innerHTML='<div class="text-center text-red-500">Failed to load messages.</div>';return}const C=document.getElementById("chat-messages");v.length===0?C.innerHTML='<div class="text-center text-text/40 py-8 text-sm">No messages yet. Say hi!</div>':(C.innerHTML=v.map(h=>{const w=h.sender_id===o.id;return`
                  <div class="flex ${w?"justify-end":"justify-start"}">
                    <div class="max-w-[75%] p-3 rounded-2xl ${w?"bg-accent text-bg rounded-tr-none":"bg-surface border border-border rounded-tl-none"}">
                      <div class="text-sm break-words">${window.sanitize(h.message)}</div>
                      <div class="text-[9px] ${w?"text-bg/60":"text-text/40"} mt-1 text-right">${new Date(h.created_at).toLocaleTimeString([],{hour:"2-digit",minute:"2-digit"})}</div>
                    </div>
                  </div>
                `}).join(""),C.scrollTop=C.scrollHeight);const S=v.filter(h=>!h.is_read&&h.sender_id!==o.id).map(h=>h.id);S.length>0&&(await window.sb.from("direct_messages").update({is_read:!0}).in("id",S),window.updateUnreadBadge())};await u(),window.currentConvSub&&window.currentConvSub.unsubscribe(),window.currentConvSub=window.sb.channel(`conv-${e}`).on("postgres_changes",{event:"INSERT",schema:"public",table:"direct_messages",filter:`conversation_id=eq.${e}`},()=>{u()}).on("postgres_changes",{event:"UPDATE",schema:"public",table:"conversations",filter:`id=eq.${e}`},()=>{window.renderMessages(e)}).subscribe()}else window.currentConvSub&&(window.currentConvSub.unsubscribe(),window.currentConvSub=null)};const Be=async()=>{const{data:e}=await window.sb.from("conversations").select("*, initiator:initiator_id(username, display_name), receiver:receiver_id(username, display_name)").order("updated_at",{ascending:!1}).limit(20);return!e||e.length===0?`
            <section>
              <h2 class="text-2xl font-serif font-bold mb-6">Direct Messages Moderation</h2>
              <div class="bg-surface border border-border rounded-lg p-8 text-center text-text/60 shadow-sm">
                No conversations found.
              </div>
            </section>
          `:`
          <section>
            <div class="flex items-center justify-between mb-6">
              <h2 class="text-2xl font-serif font-bold">Direct Messages Moderation</h2>
              <div class="text-sm text-text/60">Recent Conversations</div>
            </div>
            <div class="bg-surface border border-border rounded-lg overflow-hidden shadow-sm">
              <div class="grid grid-cols-1 md:grid-cols-3 h-[500px]">
                <!-- Conversations List -->
                <div class="border-r border-border flex flex-col">
                  <div class="p-4 border-b border-border bg-bg/50 font-medium text-sm">Conversations</div>
                  <div class="flex-1 overflow-y-auto" id="admin-dm-list">
                    ${e.map(s=>{var a,o,i,t;return`
                      <button class="w-full text-left p-4 border-b border-border hover:bg-black/5 transition-colors admin-dm-btn" data-id="${s.id}">
                        <div class="flex justify-between items-start mb-1">
                          <div class="font-medium text-sm truncate">
                            ${window.sanitize(((a=s.initiator)==null?void 0:a.display_name)||((o=s.initiator)==null?void 0:o.username))} & ${window.sanitize(((i=s.receiver)==null?void 0:i.display_name)||((t=s.receiver)==null?void 0:t.username))}
                          </div>
                          <div class="text-[10px] text-text/50 whitespace-nowrap ml-2">${new Date(s.updated_at).toLocaleDateString()}</div>
                        </div>
                        <div class="text-xs text-text/60 flex items-center gap-2">
                          <span class="w-2 h-2 rounded-full ${s.status==="accepted"?"bg-green-500":s.status==="rejected"?"bg-red-500":"bg-yellow-500"}"></span>
                          ${s.status}
                        </div>
                      </button>
                    `}).join("")}
                  </div>
                </div>
                <!-- Messages View -->
                <div class="md:col-span-2 bg-surface flex flex-col overflow-hidden" id="admin-dm-container">
                  <div class="flex-1 flex items-center justify-center text-text/40 text-sm">
                    Select a conversation to view messages
                  </div>
                </div>
              </div>
            </div>
          </section>
        `};window.renderMarketplace=async()=>{const e=document.getElementById("app-content");e.innerHTML='<div class="p-8 text-center"><div class="animate-pulse text-accent font-serif text-xl">Loading The Gallery...</div></div>';try{const{data:s,error:a}=await window.sb.from("works").select("*, author:author_id(username, display_name, avatar_url, role)").eq("type","showcase").eq("status","published").order("created_at",{ascending:!1});if(a)throw a;const o=(i,t)=>`
              <div class="group break-inside-avoid mb-8 bg-surface border border-border rounded-2xl overflow-hidden hover:shadow-2xl transition-all duration-500 hover:-translate-y-2 flex flex-col" style="animation: galleryFadeIn 0.6s ease-out ${t%10*.1}s forwards; opacity: 0;">
                <div class="relative aspect-[3/4] overflow-hidden bg-bg/50 shrink-0">
                  ${i.cover_url?`<img src="${i.cover_url}" alt="${window.sanitize(i.title)}" class="w-full h-full object-cover transition-transform duration-700 group-hover:scale-105" loading="lazy">`:`<div class="w-full h-full flex flex-col items-center justify-center p-6 text-center bg-accent/5">
                        <span class="text-6xl mb-4 opacity-50">📖</span>
                        <span class="font-serif font-bold text-2xl leading-tight text-accent">${window.sanitize(i.title)}</span>
                      </div>`}
                  <div class="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent opacity-0 group-hover:opacity-100 transition-opacity duration-500 pointer-events-none"></div>
                </div>
                
                <div class="p-6 md:p-8 flex flex-col flex-1">
                  <div class="mb-4">
                    <h3 class="font-serif font-bold text-2xl text-text leading-tight mb-1 group-hover:text-accent transition-colors">${window.sanitize(i.title)}</h3>
                    <p class="text-sm text-text/50 uppercase tracking-widest font-medium">By ${window.renderUserName(i.author)}</p>
                  </div>
                  
                  <p class="text-text/70 text-sm leading-relaxed mb-8 line-clamp-4 flex-1">${window.sanitize(i.content||"No description provided.")}</p>
                  
                  <div class="mt-auto pt-4 border-t border-border/50 flex items-center justify-between shrink-0">
                    <span class="text-xs font-medium text-text/40 uppercase tracking-wider">Showcase</span>
                    <a href="${i.purchase_url}" target="_blank" rel="noopener noreferrer" class="px-6 py-2.5 bg-accent text-bg rounded-full font-medium hover:bg-accent2 hover:scale-105 transition-all duration-300 shadow-lg shadow-accent/20 flex items-center gap-2">
                      <span>Order Now</span>
                      <svg class="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24"><path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14 5l7 7m0 0l-7 7m7-7H3"></path></svg>
                    </a>
                  </div>
                </div>
              </div>
            `;e.innerHTML=`
            <style>
              @keyframes galleryFadeIn {
                from { opacity: 0; transform: translateY(30px); }
                to { opacity: 1; transform: translateY(0); }
              }
            </style>
            <div class="max-w-[1400px] mx-auto p-4 md:p-8 lg:p-12">
              <header class="mb-16 text-center max-w-3xl mx-auto" style="animation: galleryFadeIn 0.8s ease-out forwards;">
                <h1 class="text-5xl md:text-7xl font-serif font-bold text-accent mb-6 tracking-tight">The Gallery</h1>
                <p class="text-lg md:text-xl text-text/60 leading-relaxed">A curated collection of published works, physical copies, and artwork from the Inkroot community.</p>
              </header>

              <div class="columns-1 sm:columns-2 lg:columns-3 xl:columns-4 gap-8 space-y-8">
                ${s&&s.length>0?s.map((i,t)=>o(i,t)).join(""):`<div class="col-span-full p-16 text-center text-text/50 border border-border border-dashed rounded-2xl bg-surface/30 break-inside-avoid">
                      <span class="text-4xl mb-4 block">🖼️</span>
                      <p class="text-xl font-serif">The gallery is currently empty.</p>
                      <p class="text-sm mt-2">Check back later when writers add items to their showcase.</p>
                    </div>`}
              </div>
            </div>
          `}catch(s){e.innerHTML=`<div class="p-8 text-center text-red-500">Failed to load gallery: ${s.message}</div>`}};window.renderAdmin=async()=>{var K,te,ne,ae,ie,se;const e=document.getElementById("app-content");e.innerHTML='<div class="p-8 text-center"><div class="animate-pulse text-accent">Loading Admin Dashboard...</div></div>';const{data:s}=await window.sb.auth.getUser();if(!(s!=null&&s.user)){e.innerHTML='<div class="p-8 text-center text-red-500 font-bold">Access Denied: Please sign in.</div>';return}let{data:a,error:o}=await window.sb.from("users").select("role").eq("id",s.user.id).single();if(o||(a==null?void 0:a.role)!=="admin"){e.innerHTML='<div class="p-8 text-center text-red-500 font-bold text-2xl mt-10">Access Denied: Admins Only.</div>';return}const i=new Date;i.setHours(0,0,0,0);const t=i.toISOString(),[{count:g},{count:x},{count:d},{count:b},{data:f}]=await Promise.all([window.sb.from("users").select("*",{count:"exact",head:!0}),window.sb.from("works").select("*",{count:"exact",head:!0}).eq("status","published"),window.sb.from("events").select("*",{count:"exact",head:!0}).gte("event_date",t),window.sb.from("map_pins").select("*",{count:"exact",head:!0}),window.sb.from("users").select("ink_balance")]),c=(f||[]).reduce((r,m)=>r+(m.ink_balance||0),0),{data:p}=await window.sb.from("works").select("*, author:author_id(username)").order("created_at",{ascending:!1}),{data:_}=await window.sb.from("events").select("*, organizer:organizer_id(username)").order("created_at",{ascending:!1}),{data:n}=await window.sb.from("payment_requests").select("*, user:user_id(username, display_name, ink_balance, premium_until)").eq("status","pending").order("created_at",{ascending:!1}),{data:u}=await window.sb.from("site_config").select("*"),v=(K=u==null?void 0:u.find(r=>r.key==="beacon_work_id"))==null?void 0:K.value,C=(((te=u==null?void 0:u.find(r=>r.key==="featured_work_ids"))==null?void 0:te.value)||"").split(",").filter(r=>r),S=(ne=u==null?void 0:u.find(r=>r.key==="spark_winner_id"))==null?void 0:ne.value,h=((ae=u==null?void 0:u.find(r=>r.key==="site_announcement"))==null?void 0:ae.value)||"",{data:w}=await window.sb.from("works").select("*, author:author_id(username, display_name)").eq("type","spark").order("created_at",{ascending:!1}),M=(w||[]).map(r=>r.id);let y={},$={};if(M.length>0){const[{data:r},{data:m}]=await Promise.all([window.sb.from("likes").select("work_id").in("work_id",M),window.sb.from("comments").select("work_id").in("work_id",M)]);r==null||r.forEach(B=>{y[B.work_id]=(y[B.work_id]||0)+1}),m==null||m.forEach(B=>{$[B.work_id]=($[B.work_id]||0)+1})}const j=(w||[]).map(r=>{const m=y[r.id]||0,B=$[r.id]||0,l=r.id===S;return{...r,likes_count:m,comments_count:B,is_winner:l}});j.sort((r,m)=>m.likes_count+m.comments_count-(r.likes_count+r.comments_count));const{data:A}=await window.sb.from("users").select("*").order("created_at",{ascending:!1}).limit(100),{data:I}=await window.sb.from("sparks").select("*").order("active_date",{ascending:!1}).limit(50),{data:P}=await window.sb.from("works").select("id, title, author:author_id(username)").eq("status","published").order("created_at",{ascending:!1}).limit(100),[{data:H},{data:U}]=await Promise.all([window.sb.from("likes").select("work_id"),window.sb.from("comments").select("work_id")]),V={};H==null||H.forEach(r=>{V[r.work_id]=(V[r.work_id]||0)+1});const z={};U==null||U.forEach(r=>{z[r.work_id]=(z[r.work_id]||0)+1});const D=(P||[]).map(r=>{const m=V[r.id]||0,B=z[r.id]||0;return{...r,likes_count:m,comments_count:B,engagement:m+B}});D.sort((r,m)=>m.engagement-r.engagement);const R=new Date,q=new Date(R.getTime()-5*6e4),N=(A||[]).filter(r=>r.last_active_at&&new Date(r.last_active_at)>q),W=(A||[]).filter(r=>!r.last_active_at||new Date(r.last_active_at)<=q),G=r=>{if(!r)return"Never";const m=Math.floor((R-new Date(r))/6e4);if(m<1)return"Just now";if(m<60)return`${m}m ago`;const B=Math.floor(m/60);return B<24?`${B}h ago`:`${Math.floor(B/24)}d ago`};e.innerHTML=`
          <div class="max-w-6xl mx-auto p-4 md:p-8 space-y-12">
            <header class="mb-8">
              <h1 class="text-4xl md:text-5xl font-serif font-bold text-accent">Inkroot Admin — Faez Ahmad</h1>
            </header>

            <!-- Stats Row -->
            <div class="grid grid-cols-1 md:grid-cols-5 gap-6">
              <div class="bg-surface border border-border rounded-lg p-6 text-center shadow-sm">
                <div class="text-4xl font-serif font-bold text-accent mb-2">${g||0}</div>
                <div class="text-sm text-text/60 uppercase tracking-wider">Total Users</div>
              </div>
              <div class="bg-surface border border-border rounded-lg p-6 text-center shadow-sm">
                <div class="text-4xl font-serif font-bold text-accent mb-2">${x||0}</div>
                <div class="text-sm text-text/60 uppercase tracking-wider">Published Works</div>
              </div>
              <div class="bg-surface border border-border rounded-lg p-6 text-center shadow-sm">
                <div class="text-4xl font-serif font-bold text-accent mb-2">${d||0}</div>
                <div class="text-sm text-text/60 uppercase tracking-wider">Lighthouse Events Today</div>
              </div>
              <div class="bg-surface border border-border rounded-lg p-6 text-center shadow-sm">
                <div class="text-4xl font-serif font-bold text-accent mb-2">${b||0}</div>
                <div class="text-sm text-text/60 uppercase tracking-wider">Map Pins</div>
              </div>
              <div class="bg-surface border border-border rounded-lg p-6 text-center shadow-sm">
                <div class="text-4xl font-serif font-bold text-accent2 mb-2">${c||0}</div>
                <div class="text-sm text-text/60 uppercase tracking-wider">Total Ink</div>
              </div>
            </div>

            <!-- User Presence Dashboard -->
            <section>
              <div class="flex items-center justify-between mb-6">
                <h2 class="text-2xl font-serif font-bold">User Presence</h2>
                <div class="flex gap-4 text-sm font-medium">
                  <span class="flex items-center gap-2"><span class="w-3 h-3 rounded-full bg-green-500 shadow-[0_0_8px_rgba(34,197,94,0.6)]"></span> ${N.length} Online</span>
                  <span class="flex items-center gap-2"><span class="w-3 h-3 rounded-full bg-gray-400"></span> ${W.length} Offline</span>
                </div>
              </div>
              <div class="bg-surface border border-border rounded-lg overflow-hidden shadow-sm">
                <div class="max-h-[300px] overflow-y-auto">
                  <table class="w-full text-left border-collapse">
                    <thead class="bg-bg/50 border-b border-border sticky top-0 z-10">
                      <tr>
                        <th class="p-4 font-medium text-sm text-text/60">User</th>
                        <th class="p-4 font-medium text-sm text-text/60">Status</th>
                        <th class="p-4 font-medium text-sm text-text/60">Last Seen</th>
                      </tr>
                    </thead>
                    <tbody class="divide-y divide-border">
                      ${(A||[]).sort((r,m)=>new Date(m.last_active_at||0)-new Date(r.last_active_at||0)).map(r=>{const m=r.last_active_at&&new Date(r.last_active_at)>q;return`
                          <tr class="hover:bg-black/5 transition-colors">
                            <td class="p-4">
                              <div class="flex items-center gap-3">
                                <img src="${r.avatar_url||`https://api.dicebear.com/7.x/initials/svg?seed=${r.username}`}" class="w-8 h-8 rounded-full object-cover border border-border">
                                <div>
                                  <div class="font-medium text-sm">${window.sanitize(r.display_name||r.username)}</div>
                                  <div class="text-xs text-text/50">@${window.sanitize(r.username)}</div>
                                </div>
                              </div>
                            </td>
                            <td class="p-4">
                              <div class="flex items-center gap-2">
                                <span class="w-2.5 h-2.5 rounded-full ${m?"bg-green-500 shadow-[0_0_5px_rgba(34,197,94,0.5)]":"bg-gray-400"}"></span>
                                <span class="text-sm ${m?"text-green-600 font-medium":"text-text/60"}">${m?"Online":"Offline"}</span>
                              </div>
                            </td>
                            <td class="p-4 text-sm text-text/60">
                              ${m?"Active now":G(r.last_active_at)}
                            </td>
                          </tr>
                        `}).join("")}
                    </tbody>
                  </table>
                </div>
              </div>
            </section>

            <!-- Support Chat Moderation -->
            ${await Ie()}

            <!-- Direct Messages Moderation -->
            ${await Be()}

            <!-- Payment Requests Moderation -->
            <section>
              <div class="flex items-center justify-between mb-6">
                <h2 class="text-2xl font-serif font-bold">Payment Requests</h2>
                <div class="text-sm text-text/60">${(n||[]).length} pending requests</div>
              </div>
              <div class="bg-surface border border-border rounded-lg overflow-hidden shadow-sm">
                <table class="w-full text-left border-collapse">
                  <thead class="bg-bg/50 border-b border-border">
                    <tr>
                      <th class="p-4 font-medium">User</th>
                      <th class="p-4 font-medium">Type</th>
                      <th class="p-4 font-medium">Amount (Rs.)</th>
                      <th class="p-4 font-medium">Method</th>
                      <th class="p-4 font-medium">TID</th>
                      <th class="p-4 font-medium">Actions</th>
                    </tr>
                  </thead>
                  <tbody class="divide-y divide-border">
                    ${(n||[]).map(r=>{var m,B;return`
                      <tr class="hover:bg-bg/50 transition-colors">
                        <td class="p-4 font-medium">${((m=r.user)==null?void 0:m.display_name)||((B=r.user)==null?void 0:B.username)||"Unknown"}</td>
                        <td class="p-4 uppercase text-xs font-bold text-accent2">${r.request_type}</td>
                        <td class="p-4">${r.amount_rs}</td>
                        <td class="p-4 uppercase text-xs">${r.payment_method}</td>
                        <td class="p-4 font-mono text-xs">${r.transaction_id}</td>
                        <td class="p-4 flex gap-2">
                          <button class="btn-approve-payment px-3 py-1 bg-accent text-bg rounded text-xs hover:opacity-90" data-id="${r.id}">Approve</button>
                          <button class="btn-reject-payment px-3 py-1 bg-red-500 text-white rounded text-xs hover:opacity-90" data-id="${r.id}">Reject</button>
                        </td>
                      </tr>
                    `}).join("")}
                    ${(n||[]).length?"":'<tr><td colspan="6" class="p-4 text-center text-text/50">No pending payment requests.</td></tr>'}
                  </tbody>
                </table>
              </div>
            </section>

            <!-- Moderation Queue -->
            <section>
              <h2 class="text-2xl font-serif font-bold mb-4 border-b border-border pb-2">Works Moderation Queue</h2>
              <div class="bg-surface border border-border rounded-lg overflow-x-auto shadow-sm mb-8">
                <table class="w-full text-left text-sm">
                  <thead class="bg-bg border-b border-border">
                    <tr>
                      <th class="p-4 font-medium">Title</th>
                      <th class="p-4 font-medium">Author</th>
                      <th class="p-4 font-medium">Status</th>
                      <th class="p-4 font-medium">Date</th>
                      <th class="p-4 font-medium">Actions</th>
                    </tr>
                  </thead>
                  <tbody class="divide-y divide-border">
                    ${(p||[]).map(r=>{var m;return`
                      <tr class="hover:bg-bg/50 transition-colors">
                        <td class="p-4 font-medium">${window.sanitize(r.title)}</td>
                        <td class="p-4 text-text/70">${window.sanitize((m=r.author)==null?void 0:m.username)||"Unknown"}</td>
                        <td class="p-4">
                          <span class="px-2 py-1 rounded-full text-xs ${r.status==="published"?"bg-green-500/20 text-green-600":"bg-yellow-500/20 text-yellow-600"}">
                            ${r.status}
                          </span>
                        </td>
                        <td class="p-4 text-text/60">${new Date(r.created_at).toLocaleDateString()}</td>
                        <td class="p-4 flex gap-2">
                          ${r.status!=="published"?`<button class="btn-approve px-3 py-1 bg-accent text-bg rounded text-xs hover:opacity-90" data-id="${r.id}">Approve</button>`:""}
                          <button class="btn-delete-work px-3 py-1 bg-red-500 text-white rounded text-xs hover:opacity-90" data-id="${r.id}">Delete</button>
                        </td>
                      </tr>
                    `}).join("")}
                    ${(p||[]).length?"":'<tr><td colspan="5" class="p-4 text-center text-text/50">No works found.</td></tr>'}
                  </tbody>
                </table>
              </div>

              <h2 class="text-2xl font-serif font-bold mb-4 border-b border-border pb-2">Event Moderation Queue</h2>
              <div class="bg-surface border border-border rounded-lg overflow-x-auto shadow-sm">
                <table class="w-full text-left text-sm">
                  <thead class="bg-bg border-b border-border">
                    <tr>
                      <th class="p-4 font-medium">Event Title</th>
                      <th class="p-4 font-medium">Organizer</th>
                      <th class="p-4 font-medium">Status</th>
                      <th class="p-4 font-medium">Date</th>
                      <th class="p-4 font-medium">Actions</th>
                    </tr>
                  </thead>
                  <tbody class="divide-y divide-border">
                    ${(_||[]).map(r=>{var m;return`
                      <tr class="hover:bg-bg/50 transition-colors">
                        <td class="p-4 font-medium">${window.sanitize(r.title)}</td>
                        <td class="p-4 text-text/70">${window.sanitize((m=r.organizer)==null?void 0:m.username)||"Unknown"}</td>
                        <td class="p-4">
                          <span class="px-2 py-1 rounded-full text-xs ${r.status==="published"?"bg-green-500/20 text-green-600":"bg-yellow-500/20 text-yellow-600"}">
                            ${r.status||"pending"}
                          </span>
                        </td>
                        <td class="p-4 text-text/60">${new Date(r.event_date).toLocaleDateString()}</td>
                        <td class="p-4 flex gap-2">
                          ${r.status!=="published"?`<button class="btn-approve-event px-3 py-1 bg-accent text-bg rounded text-xs hover:opacity-90" data-id="${r.id}">Approve</button>`:""}
                          <button class="btn-delete-event px-3 py-1 bg-red-500 text-white rounded text-xs hover:opacity-90" data-id="${r.id}">Delete</button>
                        </td>
                      </tr>
                    `}).join("")}
                    ${(_||[]).length?"":'<tr><td colspan="5" class="p-4 text-center text-text/50">No events found.</td></tr>'}
                  </tbody>
                </table>
              </div>
            </section>

            <!-- Spark Leaderboard Moderation -->
            <section>
              <div class="flex items-center justify-between mb-6">
                <h2 class="text-2xl font-serif font-bold">Spark Challenge Leaderboard</h2>
                <div class="text-sm text-text/60">Review submissions and select winners</div>
              </div>
              <div class="bg-surface border border-border rounded-lg overflow-x-auto shadow-sm">
                <table class="w-full text-left border-collapse min-w-[600px]">
                  <thead class="bg-bg/50 border-b border-border">
                    <tr>
                      <th class="p-4 font-medium">Work</th>
                      <th class="p-4 font-medium">Author</th>
                      <th class="p-4 font-medium">Stats</th>
                      <th class="p-4 font-medium">Winner Status</th>
                      <th class="p-4 font-medium">Actions</th>
                    </tr>
                  </thead>
                  <tbody id="spark-leaderboard-body" class="divide-y divide-border">
                    <tr><td colspan="5" class="p-4 text-center text-text/50">Loading leaderboard...</td></tr>
                  </tbody>
                </table>
              </div>
            </section>

            <!-- User Management -->
            <section>
              <h2 class="text-2xl font-serif font-bold mb-4 border-b border-border pb-2">User Management</h2>
              <div class="bg-surface border border-border rounded-lg overflow-x-auto shadow-sm">
                <table class="w-full text-left text-sm">
                  <thead class="bg-bg border-b border-border">
                    <tr>
                      <th class="p-4 font-medium">Username</th>
                      <th class="p-4 font-medium">Role</th>
                      <th class="p-4 font-medium">City</th>
                      <th class="p-4 font-medium">Points</th>
                      <th class="p-4 font-medium">Joined</th>
                      <th class="p-4 font-medium">Actions</th>
                    </tr>
                  </thead>
                  <tbody class="divide-y divide-border">
                    ${(A||[]).map(r=>`
                      <tr class="hover:bg-bg/50 transition-colors ${r.is_banned?"opacity-50":""}">
                        <td class="p-4 font-medium">${window.sanitize(r.username)} ${r.is_banned?"(Banned)":""}</td>
                        <td class="p-4">
                          <select class="role-select bg-bg border border-border rounded px-2 py-1 text-xs" data-id="${r.id}">
                            <option value="user" ${r.role==="user"?"selected":""}>User</option>
                            <option value="admin" ${r.role==="admin"?"selected":""}>Admin</option>
                          </select>
                        </td>
                        <td class="p-4 text-text/70">${r.city||"-"}</td>
                        <td class="p-4 text-accent font-bold">${r.points||0}</td>
                        <td class="p-4 text-text/60">${new Date(r.created_at).toLocaleDateString()}</td>
                        <td class="p-4">
                          ${r.is_banned?'<span class="text-xs text-red-500 font-bold">Banned</span>':`<button class="btn-ban px-3 py-1 bg-red-500 text-white rounded text-xs hover:opacity-90" data-id="${r.id}">Ban</button>`}
                        </td>
                      </tr>
                    `).join("")}
                  </tbody>
                </table>
              </div>
            </section>

            <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
              <!-- Spark Prompt Manager -->
              <section>
                <h2 class="text-2xl font-serif font-bold mb-4 border-b border-border pb-2">Spark Prompt Manager</h2>
                <div class="bg-surface border border-border rounded-lg p-6 shadow-sm mb-6">
                  <form id="add-spark-form" class="flex flex-col gap-4">
                    <textarea id="spark-text" placeholder="Enter new spark prompt..." required rows="3" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text"></textarea>
                    <div class="flex gap-4">
                      <input type="date" id="spark-date" required class="flex-1 px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">
                      <button type="submit" class="px-6 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Add Spark</button>
                    </div>
                  </form>
                </div>
                <div class="bg-surface border border-border rounded-lg overflow-hidden shadow-sm">
                  <table class="w-full text-left text-sm">
                    <thead class="bg-bg border-b border-border">
                      <tr>
                        <th class="p-3 font-medium">Date</th>
                        <th class="p-3 font-medium">Prompt</th>
                        <th class="p-3 font-medium">Actions</th>
                      </tr>
                    </thead>
                    <tbody class="divide-y divide-border">
                      ${(I||[]).map(r=>`
                        <tr>
                          <td class="p-3 whitespace-nowrap text-text/60">${r.active_date}</td>
                          <td class="p-3">${window.sanitize(r.prompt_text)}</td>
                          <td class="p-3">
                            <button class="btn-delete-spark px-3 py-1 bg-red-500 text-white rounded text-xs hover:opacity-90" data-id="${r.id}">Delete</button>
                          </td>
                        </tr>
                      `).join("")}
                      ${(I||[]).length?"":'<tr><td colspan="3" class="p-3 text-center text-text/50">No sparks found.</td></tr>'}
                    </tbody>
                  </table>
                </div>
              </section>

              <!-- Site Announcements -->
              <section>
                <h2 class="text-2xl font-serif font-bold mb-4 border-b border-border pb-2">Site Announcement</h2>
                <div class="bg-surface border border-border rounded-lg p-6 shadow-sm mb-6">
                  <form id="update-announcement-form" class="flex flex-col gap-4">
                    <textarea id="announcement-text" placeholder="Enter site announcement (leave blank to clear)..." rows="2" class="w-full px-4 py-2 rounded bg-bg border border-border focus:outline-none focus:border-accent text-text">${window.sanitize(h)}</textarea>
                    <div class="flex justify-end">
                      <button type="submit" class="px-6 py-2 bg-accent text-bg rounded font-medium hover:opacity-90 transition-opacity">Update Announcement</button>
                    </div>
                  </form>
                </div>
              </section>

              <!-- Featured Selector -->
              <section>
                <h2 class="text-2xl font-serif font-bold mb-4 border-b border-border pb-2">Home Page Curation</h2>
                <div class="bg-surface border border-border rounded-lg p-6 shadow-sm">
                  <p class="text-sm text-text/70 mb-6">Select the main <strong>Beacon</strong> (Hero) and toggle <strong>Featured</strong> works for the grid.</p>
                  <div class="space-y-3 max-h-[500px] overflow-y-auto pr-2">
                    ${(D||[]).map(r=>{var l;const m=v===r.id,B=C.includes(r.id);return`
                      <div class="flex items-center justify-between p-4 border ${m?"border-accent bg-accent/5":"border-border"} rounded-xl hover:bg-bg transition-all">
                        <div class="flex-1">
                          <div class="font-serif font-bold text-lg">${r.title}</div>
                          <div class="text-xs text-text/50">by ${((l=r.author)==null?void 0:l.username)||"Unknown"}</div>
                          <div class="flex gap-2 mt-2">
                            ${m?'<span class="px-2 py-0.5 bg-accent text-bg text-[10px] font-bold rounded-full uppercase">Hero Beacon</span>':""}
                            ${B?'<span class="px-2 py-0.5 bg-accent2 text-bg text-[10px] font-bold rounded-full uppercase">Featured Grid</span>':""}
                            <span class="px-2 py-0.5 bg-bg border border-border text-text/70 text-[10px] font-bold rounded-full" title="Likes">❤️ ${r.likes_count}</span>
                            <span class="px-2 py-0.5 bg-bg border border-border text-text/70 text-[10px] font-bold rounded-full" title="Comments">💬 ${r.comments_count}</span>
                          </div>
                        </div>
                        <div class="flex gap-2">
                          <button class="btn-set-beacon px-4 py-2 ${m?"bg-accent/20 text-accent cursor-default":"bg-accent text-bg hover:opacity-90"} rounded-lg text-xs font-bold transition-all" data-id="${r.id}" ${m?"disabled":""}>
                            ${m?"Current Hero":"Set as Hero"}
                          </button>
                          <button class="btn-toggle-featured px-4 py-2 ${B?"bg-accent2 text-bg":"border border-accent2 text-accent2 hover:bg-accent2/5"} rounded-lg text-xs font-bold transition-all" data-id="${r.id}">
                            ${B?"Remove from Grid":"Add to Grid"}
                          </button>
                        </div>
                      </div>
                    `}).join("")}
                    ${(D||[]).length?"":'<div class="text-center text-text/50 py-4">No published works available.</div>'}
                  </div>
                </div>
              </section>
            </div>
          </div>
        `;const Y=document.getElementById("spark-leaderboard-body");Y&&(Y.innerHTML=j.map(r=>{var m,B;return`
            <tr class="hover:bg-bg/50 transition-colors ${r.is_winner?"bg-accent/5":""}">
              <td class="p-4">
                <a href="#/work/${r.id}" class="font-serif font-bold hover:text-accent transition-colors">${window.sanitize(r.title)}</a>
              </td>
              <td class="p-4 text-text/70">${window.sanitize(((m=r.author)==null?void 0:m.display_name)||((B=r.author)==null?void 0:B.username))||"Unknown"}</td>
              <td class="p-4">
                <div class="flex gap-4 text-xs">
                  <span title="Likes">❤️ ${r.likes_count}</span>
                  <span title="Comments">💬 ${r.comments_count}</span>
                </div>
              </td>
              <td class="p-4">
                ${r.is_winner?'<span class="px-2 py-1 bg-accent text-bg text-[10px] font-bold rounded-full uppercase">🏆 Weekly Winner</span>':'<span class="text-xs text-text/30 italic">Participant</span>'}
              </td>
              <td class="p-4 flex gap-2">
                <button class="btn-toggle-winner px-3 py-1.5 ${r.is_winner?"bg-red-500 text-white":"bg-accent text-bg"} rounded text-[10px] font-bold transition-all" data-id="${r.id}">
                  ${r.is_winner?"Revoke":"Select Winner"}
                </button>
                <button class="btn-delete-work px-3 py-1.5 bg-red-500 text-white rounded text-[10px] font-bold hover:opacity-90 transition-all" data-id="${r.id}">
                  Delete
                </button>
              </td>
            </tr>
          `}).join(""),j.length===0&&(Y.innerHTML='<tr><td colspan="5" class="p-4 text-center text-text/50 italic">No Spark submissions yet.</td></tr>'),document.querySelectorAll(".btn-toggle-winner").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id,E=!j.find(F=>F.id===B).is_winner;r.disabled=!0;const{error:T}=await window.sb.from("site_config").upsert({key:"spark_winner_id",value:E?B:""});T?(window.showToast("Failed to update winner status","error"),r.disabled=!1):(window.showToast(E?"Winner selected!":"Winner status revoked","success"),window.renderAdmin())}})),document.querySelectorAll(".btn-approve").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id;m.target.disabled=!0;const{error:l}=await window.sb.from("works").update({status:"published"}).eq("id",B);l?(window.showToast("Failed to approve work.","error"),m.target.disabled=!1):(window.showToast("Work approved!","success"),window.renderAdmin())}}),document.querySelectorAll(".btn-delete-work").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id,l=document.createElement("div");l.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[2000] p-4",l.innerHTML=`
              <div class="bg-bg border border-border rounded-lg p-6 max-w-sm w-full shadow-xl">
                <h3 class="text-xl font-serif font-bold mb-4">Delete Work?</h3>
                <p class="text-text/70 mb-6">Are you sure you want to delete this work? This action cannot be undone.</p>
                <div class="flex gap-4">
                  <button id="confirm-cancel" class="flex-1 py-2 border border-border rounded font-medium">Cancel</button>
                  <button id="confirm-delete" class="flex-1 py-2 bg-red-600 text-white rounded font-medium">Delete</button>
                </div>
              </div>
            `,document.body.appendChild(l),document.getElementById("confirm-cancel").onclick=()=>l.remove(),document.getElementById("confirm-delete").onclick=async()=>{l.remove(),m.target.disabled=!0;const{error:E}=await window.sb.from("works").delete().eq("id",B);E?(window.showToast("Failed to delete work.","error"),m.target.disabled=!1):(window.showToast("Work deleted.","success"),window.renderAdmin())}}}),document.querySelectorAll(".role-select").forEach(r=>{r.onchange=async m=>{const B=m.target.dataset.id,l=m.target.value;r.disabled=!0;const{error:E}=await window.sb.from("users").update({role:l}).eq("id",B);E?window.handleError(E,"Failed to update role."):window.showToast("Role updated.","success"),r.disabled=!1}}),document.querySelectorAll(".btn-ban").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id,l=document.createElement("div");l.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[2000] p-4",l.innerHTML=`
              <div class="bg-bg border border-border rounded-lg p-6 max-w-sm w-full shadow-xl">
                <h3 class="text-xl font-serif font-bold mb-4">Ban User?</h3>
                <p class="text-text/70 mb-6">Are you sure you want to ban this user?</p>
                <div class="flex gap-4">
                  <button id="confirm-cancel-ban" class="flex-1 py-2 border border-border rounded font-medium">Cancel</button>
                  <button id="confirm-ban" class="flex-1 py-2 bg-red-600 text-white rounded font-medium">Ban User</button>
                </div>
              </div>
            `,document.body.appendChild(l),document.getElementById("confirm-cancel-ban").onclick=()=>l.remove(),document.getElementById("confirm-ban").onclick=async()=>{l.remove(),m.target.disabled=!0;const{error:E}=await window.sb.from("users").update({is_banned:!0}).eq("id",B);E?(window.handleError(E,"Failed to ban user."),m.target.disabled=!1):(window.showToast("User banned.","success"),window.renderAdmin())}}}),(ie=document.getElementById("add-spark-form"))==null||ie.addEventListener("submit",async r=>{r.preventDefault();const m=document.getElementById("spark-text").value,B=document.getElementById("spark-date").value,l=r.target.querySelector('button[type="submit"]');l.disabled=!0;const{error:E}=await window.sb.from("sparks").insert({prompt_text:m,active_date:B});E?(window.handleError(E),l.disabled=!1):(window.showToast("Spark added!","success"),window.renderAdmin())}),(se=document.getElementById("update-announcement-form"))==null||se.addEventListener("submit",async r=>{r.preventDefault();const m=document.getElementById("announcement-text").value,B=r.target.querySelector('button[type="submit"]');B.disabled=!0;const{error:l}=await window.sb.from("site_config").upsert({key:"site_announcement",value:m});l?(window.handleError(l,"Failed to update announcement."),B.disabled=!1):(window.showToast("Announcement updated!","success"),window.renderAdmin())}),document.querySelectorAll(".btn-delete-spark").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id,l=document.createElement("div");l.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[2000] p-4",l.innerHTML=`
              <div class="bg-bg border border-border rounded-lg p-6 max-w-sm w-full shadow-xl">
                <h3 class="text-xl font-serif font-bold mb-4">Delete Spark?</h3>
                <p class="text-text/70 mb-6">Are you sure you want to delete this spark challenge?</p>
                <div class="flex gap-4">
                  <button id="confirm-cancel-spark-del" class="flex-1 py-2 border border-border rounded font-medium">Cancel</button>
                  <button id="confirm-delete-spark" class="flex-1 py-2 bg-red-600 text-white rounded font-medium">Delete</button>
                </div>
              </div>
            `,document.body.appendChild(l),document.getElementById("confirm-cancel-spark-del").onclick=()=>l.remove(),document.getElementById("confirm-delete-spark").onclick=async()=>{l.remove(),m.target.disabled=!0;const{error:E}=await window.sb.from("sparks").delete().eq("id",B);E?(window.handleError(E,"Failed to delete spark."),m.target.disabled=!1):(window.showToast("Spark deleted.","success"),window.renderAdmin())}}}),document.querySelectorAll(".btn-approve-payment").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id,l=n.find(E=>E.id===B);if(l){m.target.disabled=!0;try{if(l.request_type==="ink"){const E=(l.user.ink_balance||0)+(l.ink_amount||0);await window.sb.from("users").update({ink_balance:E}).eq("id",l.user_id)}else if(l.request_type==="premium"){const E=new Date,T=l.user.premium_until?new Date(l.user.premium_until):E,F=T>E?T:E,O=new Date(F.getTime()+720*60*60*1e3).toISOString();await window.sb.from("users").update({premium_until:O}).eq("id",l.user_id)}await window.sb.from("payment_requests").update({status:"approved"}).eq("id",B),window.showToast("Payment approved and balance updated!","success"),window.renderAdmin()}catch(E){window.handleError(E,"Failed to approve payment."),m.target.disabled=!1}}}}),document.querySelectorAll(".btn-reject-payment").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id;m.target.disabled=!0;const{error:l}=await window.sb.from("payment_requests").update({status:"rejected"}).eq("id",B);l?(window.handleError(l,"Failed to reject payment."),m.target.disabled=!1):(window.showToast("Payment rejected.","success"),window.renderAdmin())}}),document.querySelectorAll(".btn-approve-event").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id;m.target.disabled=!0;const{error:l}=await window.sb.from("events").update({status:"published"}).eq("id",B);l?(window.handleError(l,"Failed to approve event."),m.target.disabled=!1):(window.showToast("Event approved!","success"),window.renderAdmin())}}),document.querySelectorAll(".btn-delete-event").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id,l=document.createElement("div");l.className="fixed inset-0 bg-black/50 flex items-center justify-center z-[2000] p-4",l.innerHTML=`
              <div class="bg-bg border border-border rounded-lg p-6 max-w-sm w-full shadow-xl">
                <h3 class="text-xl font-serif font-bold mb-4">Delete Event?</h3>
                <p class="text-text/70 mb-6">Are you sure you want to delete this event?</p>
                <div class="flex gap-4">
                  <button id="confirm-cancel-ev-del" class="flex-1 py-2 border border-border rounded font-medium">Cancel</button>
                  <button id="confirm-delete-ev" class="flex-1 py-2 bg-red-600 text-white rounded font-medium">Delete</button>
                </div>
              </div>
            `,document.body.appendChild(l),document.getElementById("confirm-cancel-ev-del").onclick=()=>l.remove(),document.getElementById("confirm-delete-ev").onclick=async()=>{l.remove(),m.target.disabled=!0;const{error:E}=await window.sb.from("events").delete().eq("id",B);E?(window.showToast("Failed to delete event.","error"),m.target.disabled=!1):(window.showToast("Event deleted.","success"),window.renderAdmin())}}}),document.querySelectorAll(".btn-set-beacon").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id;m.target.disabled=!0;const{error:l}=await window.sb.from("site_config").upsert({key:"beacon_work_id",value:B});l?(window.showToast("Failed to set Beacon.","error"),m.target.disabled=!1):(window.showToast("Beacon updated successfully!","success"),window.renderAdmin())}}),document.querySelectorAll(".btn-toggle-featured").forEach(r=>{r.onclick=async m=>{const B=m.target.dataset.id;m.target.disabled=!0;let l=[...C];l.includes(B)?l=l.filter(T=>T!==B):l.push(B);const{error:E}=await window.sb.from("site_config").upsert({key:"featured_work_ids",value:l.join(",")});E?(window.showToast("Failed to update featured works.","error"),m.target.disabled=!1):(window.showToast("Featured works updated!","success"),window.renderAdmin())}}),document.querySelectorAll(".admin-dm-btn").forEach(r=>{r.onclick=async m=>{const B=m.currentTarget.dataset.id,l=document.getElementById("admin-dm-container");document.querySelectorAll(".admin-dm-btn").forEach(T=>T.classList.remove("bg-black/5")),m.currentTarget.classList.add("bg-black/5"),l.innerHTML='<div class="flex-1 flex items-center justify-center"><div class="animate-pulse text-accent">Loading messages...</div></div>',(async()=>{const{data:T,error:F}=await window.sb.from("direct_messages").select("*, sender:sender_id(username, display_name)").eq("conversation_id",B).order("created_at",{ascending:!0});if(F){l.innerHTML=`<div class="text-center text-red-500 p-4">Error loading messages: ${F.message}</div>`;return}if(T&&T.length>0){l.innerHTML=`
                  <div class="p-4 border-b border-border bg-bg/50 font-medium text-sm flex justify-between items-center">
                    <span>Messages</span>
                    <button id="admin-delete-conv-btn" class="px-3 py-1 bg-red-500 text-white rounded text-xs hover:bg-red-600 transition-colors">Delete Conversation</button>
                  </div>
                  <div id="admin-dm-history" class="flex-1 overflow-y-auto p-4 space-y-4 bg-bg/10">
                    ${T.map(Q=>{var X,Z;return`
                      <div class="flex justify-start">
                        <div class="max-w-[85%] p-2 rounded-xl bg-surface border border-border">
                          <div class="text-xs font-bold text-accent mb-1">${window.sanitize(((X=Q.sender)==null?void 0:X.display_name)||((Z=Q.sender)==null?void 0:Z.username))}</div>
                          <div class="text-sm break-words">${window.sanitize(Q.message)}</div>
                          <div class="text-[9px] text-text/40 mt-1 text-right">${new Date(Q.created_at).toLocaleString()}</div>
                        </div>
                      </div>
                    `}).join("")}
                  </div>
                `;const O=document.getElementById("admin-dm-history");O&&(O.scrollTop=O.scrollHeight),document.getElementById("admin-delete-conv-btn").onclick=async()=>{confirm("Are you sure you want to delete this entire conversation? This action cannot be undone.")&&(await window.sb.from("conversations").delete().eq("id",B),window.renderAdmin())}}else l.innerHTML='<div class="flex-1 flex items-center justify-center text-text/40 text-sm">No messages in this conversation.</div>'})()}}),document.querySelectorAll(".btn-select-ticket").forEach(r=>{r.onclick=async m=>{var Z,ce;const B=m.currentTarget.dataset.id,l=document.getElementById("admin-chat-container");l.innerHTML='<div class="flex-1 flex items-center justify-center text-accent animate-pulse italic">Loading conversation...</div>';const{data:E}=await window.sb.from("support_tickets").select("*, user:user_id(username, display_name)").eq("id",B).single();l.innerHTML=`
              <div class="p-4 border-b border-border bg-bg/30 flex justify-between items-center">
                <div>
                  <div class="font-bold">${((Z=E.user)==null?void 0:Z.display_name)||((ce=E.user)==null?void 0:ce.username)}</div>
                  <div class="text-[10px] text-text/40">Ticket ID: ${E.id}</div>
                </div>
                <div class="flex gap-2">
                  <select id="admin-ticket-status" class="text-xs bg-surface border border-border rounded px-2 py-1 focus:outline-none">
                    <option value="pending" ${E.status==="pending"?"selected":""}>Pending</option>
                    <option value="resolved" ${E.status==="resolved"?"selected":""}>Resolved</option>
                  </select>
                </div>
              </div>
              <div id="admin-chat-history" class="flex-1 overflow-y-auto p-4 space-y-4 bg-bg/10"></div>
              <div class="p-4 border-t border-border">
                <form id="admin-chat-form" class="flex gap-2">
                  <input type="text" id="admin-chat-input" placeholder="Type reply..." class="flex-1 p-2 bg-bg border border-border rounded focus:outline-none focus:border-accent text-sm">
                  <button type="submit" class="px-4 py-2 bg-accent text-bg rounded font-bold text-sm">Reply</button>
                </form>
              </div>
            `;const T=document.getElementById("admin-chat-history"),F=document.getElementById("admin-chat-form"),O=document.getElementById("admin-chat-input"),Q=document.getElementById("admin-ticket-status"),X=async()=>{const{data:oe,error:ee}=await window.sb.from("support_messages").select("*").eq("ticket_id",B).order("created_at",{ascending:!0});if(ee){T.innerHTML=`<div class="text-center text-red-500 p-4">Error loading messages: ${ee.message}</div>`;return}oe&&oe.length>0?(T.innerHTML=oe.map(J=>`
                  <div class="flex ${J.sender_role==="admin"?"justify-end":"justify-start"}">
                    <div class="max-w-[85%] p-2 rounded-xl ${J.sender_role==="admin"?"bg-accent text-bg rounded-tr-none":"bg-surface border border-border rounded-tl-none"}">
                      <div class="text-sm">${J.message||J.content||""}</div>
                      <div class="text-[9px] ${J.sender_role==="admin"?"text-bg/50":"text-text/30"} mt-1 text-right">${new Date(J.created_at).toLocaleTimeString([],{hour:"2-digit",minute:"2-digit"})}</div>
                    </div>
                  </div>
                `).join(""),T.scrollTop=T.scrollHeight):T.innerHTML='<div class="text-center text-text/40 py-8 italic">No messages in this ticket yet.</div>'};X(),Q.onchange=async oe=>{const ee=oe.target.value,{error:J}=await window.sb.from("support_tickets").update({status:ee,updated_at:new Date().toISOString()}).eq("id",B);J?window.handleError(J,"Failed to update status"):window.showToast(`Ticket marked as ${ee}`,"success")},F.onsubmit=async oe=>{oe.preventDefault();const ee=O.value.trim();if(!ee)return;O.value="";const{error:J}=await window.sb.from("support_messages").insert({ticket_id:B,user_id:E.user_id,message:ee,sender_role:"admin"});J?window.handleError(J,"Failed to send reply"):(await window.sb.from("support_tickets").update({updated_at:new Date().toISOString()}).eq("id",B),X())}}})};window.loadRoute=()=>{const e=window.location.hash||window.lastHash||"#/";if(console.log(`[Router] Navigated to: ${e}`),sessionStorage.setItem("inkroot-last-route",e),window.innerWidth<768){const s=document.getElementById("sidebar"),a=document.getElementById("sidebar-backdrop");s&&s.classList.add("-translate-x-full"),a&&a.classList.add("hidden")}if(e==="#/")window.renderHome();else if(e==="#/feed"||e==="#/discover")window.renderFeed();else if(e.startsWith("#/write"))window.renderWrite();else if(e.startsWith("#/work/")){const s=e.split("/");window.renderWork(s[s.length-1])}else if(e.startsWith("#/profile")){let a=e.split("/")[2];a===""&&(a=void 0),window.renderProfile(a)}else if(e==="#/about")window.renderAbout();else if(e==="#/rules")window.renderRules();else if(e==="#/desk")window.renderSprintDesk();else if(e==="#/map")window.renderMap();else if(e==="#/events")window.renderEvents();else if(e==="#/spark")window.renderSpark();else if(e==="#/spark-board")window.renderSparkBoard();else if(e==="#/wallet")window.renderWallet();else if(e.startsWith("#/messages")){const s=e.split("/");window.renderMessages(s[2])}else if(e==="#/admin")window.renderAdmin();else if(e==="#/marketplace")window.renderMarketplace();else if(e==="#/support")window.renderSupportChat();else{const s=document.getElementById("app-content");s&&(s.innerHTML='<div class="p-12 text-center text-text/50">Page not found.</div>')}};window.addEventListener("hashchange",window.loadRoute);window.loadRoute();
