//
//  SecondViewController.swift
//  TabbedUIKitSwiftUIApp
//
//  Created by Chris Thomas on 04/07/2020.
//  Copyright © 2020 Chris Thomas. All rights reserved.
//

import SwiftUI

class HostingController: UIHostingController<MainView> {
	required init?(coder aDecoder: NSCoder) {
		
		
		super.init(coder: aDecoder, rootView: MainView())
	}
}

struct MainView: View {
	
	var body: some View {
		List {
			NavigationLink(destination: SecondView()) {
				Text("Tap me")
			}
		}.navigationBarTitle("First Screen")
	}
	
}

struct SecondView: View {
	
	var body: some View {
		Text("Hello World").navigationBarTitle("Second Screen")

	}
}
