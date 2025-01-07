'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"main.dart.js": "9d9fe8c9f01c5c34d9351ebfd20e7b84",
"index.html": "ff2568482bad64b6d542e862c4472c29",
"/": "ff2568482bad64b6d542e862c4472c29",
"assets/AssetManifest.json": "8f965701963cc67a12498fcd966bbd87",
"assets/assets/icons/ic_launcher.png": "5dff7e080b5bd9c6d10efa440838e37b",
"assets/assets/images/argentine.png": "56b35350017997846011833105ee9023",
"assets/assets/images/russia.png": "cd91b49bda1b9dadb324fb40f8f0e012",
"assets/assets/images/paraguay.png": "1ef9d13733b0a210ee10ef20e88ca272",
"assets/assets/images/uruguay.png": "a0c8979a8a2d682dad342922805084d0",
"assets/assets/images/switzerland.png": "f8d2b9fb32ce9f90ee4520559dc9099f",
"assets/assets/images/xrp.png": "2c3719963c9575ade9d2905f8a2911fb",
"assets/assets/images/india.png": "a698d11bbc1acf44cdc0dcf44a2af851",
"assets/assets/images/eu.png": "00225df0d3410531bf340dd5c368c826",
"assets/assets/images/poland.png": "9a21c77c2efde1ccaedc1d452b9ba280",
"assets/assets/images/china.png": "d125a34dd413c007f2bfd0e86b7bc562",
"assets/assets/images/england.png": "4d80c2a1fc7c55e57f894a545a19d3b4",
"assets/assets/images/btc.png": "8f8d12b8691a706a99e7544bd33527c2",
"assets/assets/images/japan.png": "a27c110e761c3dcb30f3434b8290ca63",
"assets/assets/images/united-arab-emirates.png": "14040d2ae674e8ab1ce4bd0531434c81",
"assets/assets/images/mexico.png": "1c7c95f899e948123e67b220fe61a2fb",
"assets/assets/images/australia.png": "b8c766e81b3aca4c61b94a9d274da7bf",
"assets/assets/images/singapore.png": "3d01037d3fd1baa3a0fa8595301e3108",
"assets/assets/images/new-zealand.png": "251dad09f70041dafff04b60e8c05f1b",
"assets/assets/images/sweden.png": "b751df5cb8e815cd9a0466bf216060a4",
"assets/assets/images/denmark.png": "fc2d867c9fb8dc5c4b021a7408d6ba43",
"assets/assets/images/eth.png": "174b0414fece541456d82f84a296e380",
"assets/assets/images/chile.png": "9fcc224ed8a4144f14bc02a21b924ee2",
"assets/assets/images/norway.png": "bd4104fc03867ac431e03a67dd6b6587",
"assets/assets/images/canada.png": "d8133bee039a8e8ab731f5f76c64fb9a",
"assets/assets/images/south-africa.png": "50f5dff6b433ea6fc72984efea6ceb5d",
"assets/assets/images/hong-kong.png": "51b1d1235cc296e2f5f45b65a5bf163c",
"assets/assets/images/uk.png": "2130369f1dcd6c586326d53da2821418",
"assets/assets/images/brazil.png": "31e11468509c936699b0c56dbfa4c6b1",
"assets/assets/images/united-states.png": "9ebccf83d31987f055aaca822ce02e9d",
"assets/AssetManifest.bin.json": "f1a9302700f4379f7427d4c52f54c0d9",
"assets/NOTICES": "f3a343aa64c6429782ee5015b2636343",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "ec09c35c9c3ef9d0d65077135f35e77c",
"assets/fonts/MaterialIcons-Regular.otf": "e37dea54929d6eabc61512becd28dfb9",
"version.json": "9e64adcc470fd82e5b7419a1f01166dc",
"manifest.json": "4ba53b6f601698ce4604d0b3c3397544",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"flutter.js": "4b2350e14c6650ba82871f60906437ea",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter_bootstrap.js": "5948ed895183b2afb15bf2280347339a",
"canvaskit/canvaskit.wasm": "e7602c687313cfac5f495c5eac2fb324",
"canvaskit/skwasm.js.symbols": "96263e00e3c9bd9cd878ead867c04f3c",
"canvaskit/chromium/canvaskit.wasm": "ea5ab288728f7200f398f60089048b48",
"canvaskit/chromium/canvaskit.js.symbols": "e115ddcfad5f5b98a90e389433606502",
"canvaskit/chromium/canvaskit.js": "b7ba6d908089f706772b2007c37e6da4",
"canvaskit/skwasm.wasm": "828c26a0b1cc8eb1adacbdd0c5e8bcfa",
"canvaskit/canvaskit.js.symbols": "efc2cd87d1ff6c586b7d4c7083063a40",
"canvaskit/canvaskit.js": "26eef3024dbc64886b7f48e1b6fb05cf",
"canvaskit/skwasm.js": "ac0f73826b925320a1e9b0d3fd7da61c",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
