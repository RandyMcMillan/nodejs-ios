//
//  ContentView.swift
//  Example
//
//  Copyright (c) 2021 Changbeom Ahn
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import SwiftUI

struct ContentView: View {
    @State var info_1 = ""
    @State var info_2 = ""

    var body: some View {
        VStack {
            Text(info_1)
                .padding()
            
            Button {
                do {
                    let data = try Data(contentsOf: URL(string: "http://127.0.0.1:3000")!)
                    info_1 = String(data: data, encoding: .utf8) ?? "not UTF-8?"
                } catch {
                    info_1 = error.localizedDescription
                }
            } label: {
                Text("Submit1")
            }
            Text(info_2)
                .padding()

            Button {
                do {
                    let data = try Data(contentsOf: URL(string: "http://127.0.0.1:3001")!)
                    info_2 = String(data: data, encoding: .utf8) ?? "not UTF-8?"
                } catch {
                    info_2 = error.localizedDescription
                }
            } label: {
                Text("Submit2")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
