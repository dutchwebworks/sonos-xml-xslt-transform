# Sonos XML - XSLT simple transform

*By Dennis Burger, august 2016*

Testing a XML to XSLT (output HTML) of a Sonos XML file. For one day a handy **backup** to an Excel file (CSV?) of my Sonos songs and playlists.

## Sonos XML dump file

One can **save a XML file** of the Sonos playlists and the songs on those play list by visiting the local URL of the Sonos sytem.

	http://192.168.178.41:1400/getrs?id=2
	
Change the IP nummer to the IP number of your own local (network) Sonos system. Save the XML from the web browser as `sonos-sample.xml`.

## Transform the XML using XSLT to HTML on Mac

Once the XML file is saved in the same location as this projects XSLT file. Run the following command to transform the Sonos XML file to a HTML that can easily be opened in a web browser and copy/paste to something like Excel.

Open a Terminal window on Mac and run:

	xsltproc -o result.html sonos-transform.xslt sonos-sample.xml
	
On Mac the `xsltproc` is already installed.

## Other resources

* Stack-Overflow [Split comma seperated string into nodes](http://stackoverflow.com/questions/31004343/xslt-1-0-split-comma-seperated-string-into-named-nodes)
* [Free XSLT Transformer](http://www.freeformatter.com/xsl-transformer.html)