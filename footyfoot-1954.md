<div id="selector" style="top:0; position:fixed; background-color:#d9d9d9; text-align:center; width:100%;border-bottom:1px solid black;">
<strong>
<a href="../maas-vanilla/zork" style="background-color:white;border-top:1px solid black; border-left:1px solid black; border-right:1px solid black; border-bottom:5px solid white;">
 &nbsp;Full&nbsp;
</a>
</strong>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../maas-ui-only/zork" style="border-top:1px solid black; border-left:1px solid black; border-right:1px solid black;">
UI-only
</a>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="../maas-cli-only/zork" style="border-top:1px solid black; border-left:1px solid black; border-right:1px solid black;">
CLI-only
</a>
</div>

### xpub - general purpose translation and publishing tool

**xpub** moves files between local directories, github, and discourse -- and converts discourse markdown to html.  It can deal with a single file, an entire directory, or a range of discourse topics.

Install it in your path and type `xpub help` to get started.

-----

**xpub** needs the following libraries:

 - sys
 - subprocess
 - json
 - os
 - time
 - re
 - markdown
 - jinja2
 - click
 - yaml

Most of these are standard.