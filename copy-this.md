---
layout: default
title: Music - Raiden Erdmann
subtitle: I love electronic music and mix it myself.
---
# Copy this
<div id="content"></div>
<p>Into your C:>onsole</p>
<script>
  async function onLoad() {
    let params = new URLSearchParams(location.search);
    document.getElementById("content").innerHTML = params.get("id");
  }
</script>
