###
Author: Paul B. Hartzog
Year: 2015
WWW: http:paulbhartzog.org
Github: http://github.com/paulbhartzog

Requirements:
Übersicht: http://github.com/felixhageloh/uebersicht/

INSTRUCTIONS
- This widget uses the HTML5 "video" tag to place a video into Übersicht
- This widget has been tested with .mp4 files.

EXAMPLE:
  <video width="360" loop controls autoplay>
    <source src="movie.widget/SampleVideo_360x240_1mb.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>

- For html5 video tutorials see: http://www.w3schools.com/html/html5_video.asp

- thanks to Übersicht (http://github.com/felixhageloh/uebersicht/)
- thanks to http://www.sample-videos.com/ for the sample video

###

# refreshFrequency default is 1000 ms (1 s), so we set it to false on purpose
# Reference: https://github.com/felixhageloh/uebersicht/blob/master/README.md
refreshFrequency: false

render: ->"""
  <video width="360" loop controls>
    <source src="video.widget/SampleVideo_360x240_1mb.mp4" type="video/mp4">
    Your browser does not support the video tag.
  </video>
"""

style: """
  top: 10px
  left: 10px
  border: 1px solid #fff
  z-index: 1000
  /* kluge to erase space at bottom of video inside container */
  video
    margin-bottom: -4px
"""
