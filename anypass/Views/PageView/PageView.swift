import SwiftUI

struct PageView: View {
    @StateObject var pageViewModel = PageViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Image("img_12")
                        .resizable()
                        .frame(width: getRelativeWidth(114.0), height: getRelativeHeight(179.0),
                               alignment: .center)
                        .scaledToFit()
                        .clipped()
                        .padding(.leading, getRelativeWidth(165.0))
                        .padding(.trailing, getRelativeWidth(135.0))
                        .onTapGesture {
                            pageViewModel.nextScreen = "PagetwoView"
                        }
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.LightBlue800)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PagetwoView(),
                                   tag: "PagetwoView",
                                   selection: $pageViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.LightBlue800)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
        .onAppear {
            pageViewModel.nextScreen = "PagetwoView"
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
    }
}
