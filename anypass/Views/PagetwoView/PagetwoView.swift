import SwiftUI

struct PagetwoView: View {
    @StateObject var pagetwoViewModel = PagetwoViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                VStack(alignment: .leading, spacing: 0) {
                    HStack {
                        VStack {
                            HStack {
                                Text(StringConstants.kLbl)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Bluegray700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(18.0),
                                           height: getRelativeHeight(24.0), alignment: .topLeading)
                                    .padding(.bottom, getRelativeHeight(10.0))
                                Spacer()
                                HStack {
                                    Image("img_rremovebgprev")
                                        .resizable()
                                        .frame(width: getRelativeWidth(185.0),
                                               height: getRelativeHeight(29.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Image("img_vector")
                                        .resizable()
                                        .frame(width: getRelativeWidth(32.0),
                                               height: getRelativeHeight(31.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(64.0))
                                }
                                .frame(width: getRelativeWidth(281.0),
                                       height: getRelativeHeight(32.0), alignment: .bottom)
                            }
                            .frame(width: getRelativeWidth(384.0), height: getRelativeHeight(35.0),
                                   alignment: .leading)
                            Image("img_vector_bluegray_700")
                                .resizable()
                                .frame(width: getRelativeWidth(6.0), height: getRelativeHeight(2.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(13.0))
                        }
                        .padding(.leading, getRelativeWidth(10.0))
                        .padding(.trailing, getRelativeWidth(19.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(63.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray900)
                    ZStack(alignment: .leading) {
                        HStack {
                            Divider()
                                .frame(width: getRelativeWidth(1.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .background(ColorConstants.LightBlue900)
                                .padding(.leading, getRelativeWidth(132.0))
                            Image("img_1hall1")
                                .resizable()
                                .frame(width: getRelativeWidth(99.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.leading, getRelativeWidth(29.0))
                            Divider()
                                .frame(width: getRelativeWidth(1.0),
                                       height: getRelativeHeight(42.0), alignment: .top)
                                .background(ColorConstants.LightBlue900)
                                .padding(.leading, getRelativeWidth(31.0))
                            Image("img_11")
                                .resizable()
                                .frame(width: getRelativeWidth(63.0),
                                       height: getRelativeHeight(42.0), alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(30.0))
                        }
                        .onTapGesture {
                            pagetwoViewModel.nextScreen = "PagethreeView"
                        }
                        .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(69.0),
                               alignment: .leading)
                        .background(ColorConstants.Indigo900)
                        Image("img_screenshot2023")
                            .resizable()
                            .frame(width: getRelativeWidth(142.0), height: getRelativeHeight(69.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.leading, getRelativeWidth(12.0))
                            .padding(.trailing, getRelativeWidth(260.0))
                    }
                    .hideNavigationBar()
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(70.0),
                           alignment: .leading)
                    VStack {
                        Image("img_screenshot2023_510x367")
                            .resizable()
                            .frame(width: getRelativeWidth(367.0), height: getRelativeHeight(510.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.top, getRelativeHeight(54.0))
                            .padding(.horizontal, getRelativeWidth(15.0))
                        HStack {
                            HStack {
                                Image("img_vector_bluegray_400")
                                    .resizable()
                                    .frame(width: getRelativeWidth(25.0),
                                           height: getRelativeWidth(25.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                Text(StringConstants.kLblLanguage)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.Black900)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(55.0),
                                           height: getRelativeHeight(15.0), alignment: .topLeading)
                                    .padding(.leading, getRelativeWidth(7.0))
                                    .padding(.trailing, getRelativeWidth(17.0))
                            }
                            .frame(width: getRelativeWidth(109.0), height: getRelativeHeight(43.0),
                                   alignment: .center)
                            .overlay(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                                    bottomRight: 9.0)
                                    .stroke(ColorConstants.Black900,
                                            lineWidth: 1))
                            .background(RoundedCorners(topLeft: 9.0, topRight: 9.0, bottomLeft: 9.0,
                                                       bottomRight: 9.0)
                                    .fill(ColorConstants.WhiteA700))
                            .shadow(color: ColorConstants.Black9003f, radius: 4, x: 0, y: 4)
                            Text(StringConstants.kMsgAvexLiveCre)
                                .font(FontScheme.kInterRegular(size: getRelativeHeight(12.0)))
                                .fontWeight(.regular)
                                .foregroundColor(ColorConstants.WhiteA700)
                                .minimumScaleFactor(0.5)
                                .multilineTextAlignment(.leading)
                                .frame(width: getRelativeWidth(111.0),
                                       height: getRelativeHeight(15.0), alignment: .topLeading)
                                .padding(.vertical, getRelativeHeight(10.0))
                                .padding(.leading, getRelativeWidth(45.0))
                        }
                        .frame(width: getRelativeWidth(266.0), height: getRelativeHeight(43.0),
                               alignment: .leading)
                        .padding(.vertical, getRelativeHeight(96.0))
                        .padding(.horizontal, getRelativeWidth(15.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(720.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray901)
                }
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: PagethreeView(),
                                   tag: "PagethreeView",
                                   selection: $pagetwoViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct PagetwoView_Previews: PreviewProvider {
    static var previews: some View {
        PagetwoView()
    }
}
