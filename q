warning: in the working copy of '.gitignore', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'package-lock.json', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'package.json', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'src/App.jsx', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/.gitignore b/.gitignore[m
[1mindex a547bf3..7ceb59f 100644[m
[1m--- a/.gitignore[m
[1m+++ b/.gitignore[m
[36m@@ -22,3 +22,4 @@[m [mdist-ssr[m
 *.njsproj[m
 *.sln[m
 *.sw?[m
[32m+[m[32m.env[m
[1mdiff --git a/package-lock.json b/package-lock.json[m
[1mindex 06906cd..6b49ffa 100644[m
[1m--- a/package-lock.json[m
[1m+++ b/package-lock.json[m
[36m@@ -8,6 +8,7 @@[m
       "name": "final-project",[m
       "version": "0.0.0",[m
       "dependencies": {[m
[32m+[m[32m        "@supabase/supabase-js": "^2.42.7",[m
         "react": "^18.2.0",[m
         "react-dom": "^18.2.0",[m
         "react-router-dom": "^6.23.0"[m
[36m@@ -1144,6 +1145,73 @@[m
         "win32"[m
       ][m
     },[m
[32m+[m[32m    "node_modules/@supabase/auth-js": {[m
[32m+[m[32m      "version": "2.64.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/auth-js/-/auth-js-2.64.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-tA2PXLoWEzhD0N1Vysree+HftfeWBbFV0E+taND5rj/pZTjkwKq/9GlrnXkbs5pnw+tsnABDRo2WLZmymihGdA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@supabase/node-fetch": "^2.6.14"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@supabase/functions-js": {[m
[32m+[m[32m      "version": "2.3.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/functions-js/-/functions-js-2.3.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-QyzNle/rVzlOi4BbVqxLSH828VdGY1RElqGFAj+XeVypj6+PVtMlD21G8SDnsPQDtlqqTtoGRgdMlQZih5hTuw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@supabase/node-fetch": "^2.6.14"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@supabase/node-fetch": {[m
[32m+[m[32m      "version": "2.6.15",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/node-fetch/-/node-fetch-2.6.15.tgz",[m
[32m+[m[32m      "integrity": "sha512-1ibVeYUacxWYi9i0cf5efil6adJ9WRyZBLivgjs+AUpewx1F3xPi7gLgaASI2SmIQxPoCEjAsLAzKPgMJVgOUQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "whatwg-url": "^5.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": "4.x || >=6.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@supabase/postgrest-js": {[m
[32m+[m[32m      "version": "1.15.2",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/postgrest-js/-/postgrest-js-1.15.2.tgz",[m
[32m+[m[32m      "integrity": "sha512-9/7pUmXExvGuEK1yZhVYXPZnLEkDTwxgMQHXLrN5BwPZZm4iUCL1YEyep/Z2lIZah8d8M433mVAUEGsihUj5KQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@supabase/node-fetch": "^2.6.14"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@supabase/realtime-js": {[m
[32m+[m[32m      "version": "2.9.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/realtime-js/-/realtime-js-2.9.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-wdq+2hZpgw0r2ldRs87d3U08Y8BrsO1bZxPNqbImpYshAEkusDz4vufR8KaqujKxqewmXS6YnUhuRVdvSEIKCA==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@supabase/node-fetch": "^2.6.14",[m
[32m+[m[32m        "@types/phoenix": "^1.5.4",[m
[32m+[m[32m        "@types/ws": "^8.5.10",[m
[32m+[m[32m        "ws": "^8.14.2"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@supabase/storage-js": {[m
[32m+[m[32m      "version": "2.5.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/storage-js/-/storage-js-2.5.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-OpLoDRjFwClwc2cjTJZG8XviTiQH4Ik8sCiMK5v7et0MDu2QlXjCAW3ljxJB5+z/KazdMOTnySi+hysxWUPu3w==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@supabase/node-fetch": "^2.6.14"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@supabase/supabase-js": {[m
[32m+[m[32m      "version": "2.42.7",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@supabase/supabase-js/-/supabase-js-2.42.7.tgz",[m
[32m+[m[32m      "integrity": "sha512-BEIEYe5KJpzd8Z3k4CKyjNuBmgSihDdE8MJO/Fg7O5h/lQg8qOp1MMWLWPP5aVKt4TYled/W82ePNJflqc2JbQ==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@supabase/auth-js": "2.64.1",[m
[32m+[m[32m        "@supabase/functions-js": "2.3.1",[m
[32m+[m[32m        "@supabase/node-fetch": "2.6.15",[m
[32m+[m[32m        "@supabase/postgrest-js": "1.15.2",[m
[32m+[m[32m        "@supabase/realtime-js": "2.9.4",[m
[32m+[m[32m        "@supabase/storage-js": "2.5.5"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/@types/babel__core": {[m
       "version": "7.20.5",[m
       "resolved": "https://registry.npmjs.org/@types/babel__core/-/babel__core-7.20.5.tgz",[m
[36m@@ -1191,6 +1259,19 @@[m
       "integrity": "sha512-/kYRxGDLWzHOB7q+wtSUQlFrtcdUccpfy+X+9iMBpHK8QLLhx2wIPYuS5DYtR9Wa/YlZAbIovy7qVdB1Aq6Lyw==",[m
       "dev": true[m
     },[m
[32m+[m[32m    "node_modules/@types/node": {[m
[32m+[m[32m      "version": "20.12.7",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/node/-/node-20.12.7.tgz",[m
[32m+[m[32m      "integrity": "sha512-wq0cICSkRLVaf3UGLMGItu/PtdY7oaXaI/RVU+xliKVOtRna3PRY57ZDfztpDL0n11vfymMUnXv8QwYCO7L1wg==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "undici-types": "~5.26.4"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/@types/phoenix": {[m
[32m+[m[32m      "version": "1.6.4",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/phoenix/-/phoenix-1.6.4.tgz",[m
[32m+[m[32m      "integrity": "sha512-B34A7uot1Cv0XtaHRYDATltAdKx0BvVKNgYNqE4WjtPUa4VQJM7kxeXcVKaH+KS+kCmZ+6w+QaUdcljiheiBJA=="[m
[32m+[m[32m    },[m
     "node_modules/@types/prop-types": {[m
       "version": "15.7.12",[m
       "resolved": "https://registry.npmjs.org/@types/prop-types/-/prop-types-15.7.12.tgz",[m
[36m@@ -1216,6 +1297,14 @@[m
         "@types/react": "*"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/@types/ws": {[m
[32m+[m[32m      "version": "8.5.10",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/@types/ws/-/ws-8.5.10.tgz",[m
[32m+[m[32m      "integrity": "sha512-vmQSUcfalpIq0R9q7uTo2lXs6eGIpt9wtnLdMv9LVpIjCA/+ufZRozlVoVelIYixx1ugCBKDhn89vnsEGOCx9A==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "@types/node": "*"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/@ungap/structured-clone": {[m
       "version": "1.2.0",[m
       "resolved": "https://registry.npmjs.org/@ungap/structured-clone/-/structured-clone-1.2.0.tgz",[m
[36m@@ -4001,6 +4090,11 @@[m
         "node": ">=4"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/tr46": {[m
[32m+[m[32m      "version": "0.0.3",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/tr46/-/tr46-0.0.3.tgz",[m
[32m+[m[32m      "integrity": "sha512-N3WMsuqV66lT30CrXNbEjx4GEwlow3v6rr4mCcv6prnfwhS01rkgyFdjPNBYd9br7LpXV1+Emh01fHnq2Gdgrw=="[m
[32m+[m[32m    },[m
     "node_modules/type-check": {[m
       "version": "0.4.0",[m
       "resolved": "https://registry.npmjs.org/type-check/-/type-check-0.4.0.tgz",[m
[36m@@ -4113,6 +4207,11 @@[m
         "url": "https://github.com/sponsors/ljharb"[m
       }[m
     },[m
[32m+[m[32m    "node_modules/undici-types": {[m
[32m+[m[32m      "version": "5.26.5",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/undici-types/-/undici-types-5.26.5.tgz",[m
[32m+[m[32m      "integrity": "sha512-JlCMO+ehdEIKqlFxk6IfVoAUVmgz7cU7zD/h9XZ0qzeosSHmUJVOzSQvvYSYWXkFXC+IfLKSIffhv0sVZup6pA=="[m
[32m+[m[32m    },[m
     "node_modules/update-browserslist-db": {[m
       "version": "1.0.13",[m
       "resolved": "https://registry.npmjs.org/update-browserslist-db/-/update-browserslist-db-1.0.13.tgz",[m
[36m@@ -4207,6 +4306,20 @@[m
         }[m
       }[m
     },[m
[32m+[m[32m    "node_modules/webidl-conversions": {[m
[32m+[m[32m      "version": "3.0.1",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/webidl-conversions/-/webidl-conversions-3.0.1.tgz",[m
[32m+[m[32m      "integrity": "sha512-2JAn3z8AR6rjK8Sm8orRC0h/bcl/DqL7tRPdGZ4I1CjdF+EaMLmYxBHyXuKL849eucPFhvBoxMsflfOb8kxaeQ=="[m
[32m+[m[32m    },[m
[32m+[m[32m    "node_modules/whatwg-url": {[m
[32m+[m[32m      "version": "5.0.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/whatwg-url/-/whatwg-url-5.0.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-saE57nupxk6v3HY35+jzBwYa0rKSy0XR8JSxZPwgLr7ys0IBzhGviA1/TUGJLmSVqs8pb9AnvICXEuOHLprYTw==",[m
[32m+[m[32m      "dependencies": {[m
[32m+[m[32m        "tr46": "~0.0.3",[m
[32m+[m[32m        "webidl-conversions": "^3.0.0"[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/which": {[m
       "version": "2.0.2",[m
       "resolved": "https://registry.npmjs.org/which/-/which-2.0.2.tgz",[m
[36m@@ -4307,6 +4420,26 @@[m
       "integrity": "sha512-l4Sp/DRseor9wL6EvV2+TuQn63dMkPjZ/sp9XkghTEbV9KlPS1xUsZ3u7/IQO4wxtcFB4bgpQPRcR3QCvezPcQ==",[m
       "dev": true[m
     },[m
[32m+[m[32m    "node_modules/ws": {[m
[32m+[m[32m      "version": "8.16.0",[m
[32m+[m[32m      "resolved": "https://registry.npmjs.org/ws/-/ws-8.16.0.tgz",[m
[32m+[m[32m      "integrity": "sha512-HS0c//TP7Ina87TfiPUz1rQzMhHrl/SG2guqRcTOIUYD2q8uhUdNHZYJUaQ8aTGPzCh+c6oawMKW35nFl1dxyQ==",[m
[32m+[m[32m      "engines": {[m
[32m+[m[32m        "node": ">=10.0.0"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependencies": {[m
[32m+[m[32m        "bufferutil": "^4.0.1",[m
[32m+[m[32m        "utf-8-validate": ">=5.0.2"[m
[32m+[m[32m      },[m
[32m+[m[32m      "peerDependenciesMeta": {[m
[32m+[m[32m        "bufferutil": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        },[m
[32m+[m[32m        "utf-8-validate": {[m
[32m+[m[32m          "optional": true[m
[32m+[m[32m        }[m
[32m+[m[32m      }[m
[32m+[m[32m    },[m
     "node_modules/yallist": {[m
       "version": "3.1.1",[m
       "resolved": "https://registry.npmjs.org/yallist/-/yallist-3.1.1.tgz",[m
[1mdiff --git a/package.json b/package.json[m
[1mindex 1735fa9..43f1fb2 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -10,6 +10,7 @@[m
     "preview": "vite preview"[m
   },[m
   "dependencies": {[m
[32m+[m[32m    "@supabase/supabase-js": "^2.42.7",[m
     "react": "^18.2.0",[m
     "react-dom": "^18.2.0",[m
     "react-router-dom": "^6.23.0"[m
[1mdiff --git a/src/App.jsx b/src/App.jsx[m
[1mindex 2e912cc..d1a022d 100644[m
[1m--- a/src/App.jsx[m
[1m+++ b/src/App.jsx[m
[36m@@ -2,21 +2,28 @@[m [mimport './App.css'[m
 import './fonts/Jura-VariableFont_wght.ttf'[m
 import './fonts/Imprima-Regular.ttf'[m
 import PostItem from './components/postItem'[m
[32m+[m[32mimport { createClient } from "@supabase/supabase-js";[m
[32m+[m[32mimport { useEffect } from 'react';[m
[32m+[m[32mimport { useState } from 'react';[m
[32m+[m[32mconst API_KEY  = import.meta.env.VITE_API_KEY;[m
 [m
[31m-const data = [[m
[31m-  {[m
[31m-    name: 'my first post',[m
[31m-    song: 'Flower dance - Dj okawari',[m
[31m-    description: 'I love this song, it made me remember all this stuffy from ...',[m
[31m-    image: null[m
[31m-  }[m
[31m-][m
[32m+[m[32mconst supabase = createClient("https://xkmfpppjcuiwswqckkbp.supabase.co", API_KEY)[m
 [m
 const App = () => {[m
[32m+[m[32m  const [posts, setPosts] = useState([]);[m
[32m+[m[41m  [m
[32m+[m[32m  useEffect(() => {[m
[32m+[m[32m    const getData = async () => {[m
[32m+[m[32m      const data = await supabase.from("posts").select();[m
[32m+[m[32m      setPosts(data.data)[m
[32m+[m[32m    }[m
[32m+[m[32m    getData();[m
[32m+[m[32m  }, [])[m
[32m+[m
   return ([m
     <>[m
     <div className='post-items'>[m
[31m-      {data.map((entry, index) => {[m
[32m+[m[32m      {posts && posts.map((post, index) => {[m
         return <div key={index}>[m
           <PostItem />[m
         </div>[m
