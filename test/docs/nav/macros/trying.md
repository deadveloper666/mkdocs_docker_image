---
title: Index 
description: Ultimas Noticias
cabecera: {"title":"Paco come mierda", "content":"mucha mierda", "image":"https://imagenes.20minutos.es/files/image_640_360/files/fp/uploads/imagenes/2023/04/12/pep-guardiola.r_d.2136-374-1398.jpeg"}
treeNotices: [{"title":"Noticia1","content":"lo flipas", "image":"https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png"},{"title":"Noticia2", "content":"ha sido unas <b>pasada<b>", "image":"https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png"},{"title":"Noticia3", "content": "algo magico", "image":"https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png"}]
advertising: {"image": "https://neilpatel.com/wp-content/uploads/2021/02/discovery-successful-banner-advertising-.png"}
largeNoticeA: [{"title":"Noticia1","content":"lo flipas", "image":"https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png"},{"title":"Noticia2", "content":"ha sido unas <b>pasada<b>", "image":"https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png"},{"title":"Noticia3", "content": "algo magico", "image":"https://www.neoteroi.dev/mkdocs-plugins/img/icons/001-zeus.png"}]
youtubeEmbedNotice: {"videoId":"cpA8z-xKAfs", "videoTitle":"Brutal Paliza"}

advertisingB: {"image":"https://s0.2mdn.net/simgad/12017738049232809608"}
---
{% import 'portada.macros' as newspaper_macros %}

# {{description}}

{{newspaper_macros.createCabecera( cabecera )}}

---

{{newspaper_macros.treeHorizontal( treeNotices )}}

---

{{newspaper_macros.advertisingTypeA( advertising )}}

{{newspaper_macros.largeNoticeA( largeNoticeA )}}

---

{{newspaper_macros.advertisingTypeA( advertisingB )}}

---

{{newspaper_macros.youtubeVideo(youtubeEmbedNotice.videoId, youtubeEmbedNotice.videoTitle)}}

{{newspaper_macros.advertisingTypeA( advertising )}}
