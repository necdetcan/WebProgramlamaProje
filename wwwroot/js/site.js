// Please see documentation at https://docs.microsoft.com/aspnet/core/client-side/bundling-and-minification
// for details on configuring this project to bundle and minify static web assets.

// Write your JavaScript code.
<script>
    const $ = s => document.querySelectorAll(s)
    const on = (ev, el, cb) =>
    el.addEventListener(ev, e => cb(e, el))
    $('a').forEach(el =>
    on('click', el, e => e.preventDefault())
    )
    </script>
