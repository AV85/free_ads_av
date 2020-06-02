// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import './hideMsg'
import ActiveStorageDragAndDrop from 'active_storage_drag_and_drop'
ActiveStorageDragAndDrop.start()

import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';
import 'owl.carousel/docs/assets/owlcarousel/assets/owl.theme.default.min.css';
import './owl-caroucel'

//you may also need to add these two lines above the owl carousel code if you get the 'error $ is not a function' error in the console
// import JQuery from 'jquery';
// window.$ = window.JQuery = JQuery;