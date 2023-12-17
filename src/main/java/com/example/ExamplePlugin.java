package com.example;

import dk.gtz.graphedit.spi.IPlugin;

// NOTE: See https://javadoc.graphedit.gtz.dk/dk/gtz/graphedit/spi/IPlugin.html
public class ExamplePlugin implements IPlugin {
	@Override
	public String getName() {
		return "example";
	}
}
