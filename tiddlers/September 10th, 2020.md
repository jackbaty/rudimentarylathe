- My [[Cloudron]] server instance at [[AWS]] is down this morning. Attempting a reboot
    - This is a reminder that I no longer enjoy running my own servers
    - Appears that the instance is running out of storage. I really don't feel like dealing with this right now
- [kebifurai/TiddlyResearch: Free and local note-taking environment based on TiddlyWiki](https://github.com/kebifurai/TiddlyResearch) #TiddlyWiki
- [SchumacherFM/wordpress-to-hugo-exporter](https://github.com/SchumacherFM/wordpress-to-hugo-exporter) #Hugo
    - Exported posts from [[copingmechanism.com]] for import into Hugo
- Imported a bunch of posts from [[copingmechanism.com]] to [[baty.net]]. There's a chance I'll shut down Coping Mechanism (again).
    - I did it. Stopped the app on [[Cloudron]] and updated DNS to use S3 buckets and cloudfront for redirects of copingmechanism.com
- I love using "Page Bundles" in [[Hugo]]. Keeps everything related to each post together in a folder. No more lost image files, I hope.
- Now I'm working on removing my [[Cloudron]] subscription and all its apps. I was running [[Lychee]], [[Ghost]], [[WordPress]], [[PrivateBin]], [[Wallabag]], [[Commento]], [[StatPing]].
    - Migrated my [[Commento]]comments to a paid plan at commento.io. $99/year is too much but Cloudron costs $15/month so that's a start
- It still drives me nuts that I can't upload a bunch of photos to a [[Flickr]] album without all of them polluting my feed.
- [[Microsoft Surface Duo]] is something I'm interested in. The reviews complain about price and features related to using it as a phone. I don't want phone features at all. I want a dual-screen tablet. I bet I buy one. Then, I'll end up with a [[Windows]] laptop :)
- Thought I'd try [[Vercel]] as an alternative to Netlify
    - Added a `vercel.json`file to the repo so I can set the Hugo version

```javascript
{
  "build": {
    "env": {
      "HUGO_VERSION": "0.74.3"
    }
  }
}
```
    - Build fails

"""
16:18:52.273  	Cloning github.com/jackbaty/baty.net (Branch: master, Commit: 2e9d783)
16:19:12.051  	Cloning completed in 19778ms
16:19:12.060  	Analyzing source code...
16:19:15.977  	Installing build runtime...
16:19:16.397  	Build runtime installed: 419.799ms
16:19:17.299  	Installing dependencies...
16:19:17.527  	yarn install v1.22.4
16:19:17.540  	info No lockfile found.
16:19:17.543  	[1/4] Resolving packages...
16:19:17.544  	[2/4] Fetching packages...
16:19:17.545  	[3/4] Linking dependencies...
16:19:17.550  	[4/4] Building fresh packages...
16:19:17.552  	success Saved lockfile.
16:19:17.553  	Done in 0.03s.
16:19:17.585  	WARN 2020/09/10 20:19:17 Module "LoveIt" is not compatible with this Hugo version; run "hugo mod graph" for more information.
16:19:17.611  	Error: add site dependencies: load resources: loading templates: "/vercel/6e2f55ec/themes/LoveIt/layouts/partials/init.html:35:1": parse failed: template: partials/init.html:35: function "warnf" not defined
16:19:17.615  	Error: Command "hugo" exited with 255
16:19:19.633  	Done with "config.toml"
"""

    - I'm a moron, I added `versel.json` instead of `vercel.json`. Spelling matters :). 
    - Updated DNS for [[baty.net]] to point to the Vercel IP 76.76.21.21 (was 104.198.14.52)
    - Updated www.baty.net to be a CNAME pointing to cname.vercel-dns.com (was elastic-turing-95de90.netlify.app.)
    - It takes 10 minutes to do any minor deployment. Too slow. Reverting all of it
    - 
- [Paper Emacs – Manuel Uberti](https://www.manueluberti.eu/emacs/2020/07/24/paper/) To make [[Emacs]] look better. Most of this I do already but should read this later.
- Aaaand I've fired up [[SmugMug]] again.
