---
layout: default
title: Copy this - Raiden Erdmann
subtitle: Copy this link into your console.
permalink: /copy-this
---
# Copy this
<div id='content'></div>
<p>Into your C:>onsole</p>
<script>
  async function onLoad() { $("#content").append(new URLSearchParams(location.search).get("id")); }
</script>
