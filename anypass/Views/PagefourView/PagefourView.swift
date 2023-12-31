import SwiftUI

struct PagefourView: View {
    @StateObject var pagefourViewModel = PagefourViewModel()
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
                                    .padding(.bottom, getRelativeHeight(9.0))
                                Spacer()
                                HStack {
                                    Image("img_rremovebgprev")
                                        .resizable()
                                        .frame(width: getRelativeWidth(185.0),
                                               height: getRelativeHeight(28.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                    Image("img_vector")
                                        .resizable()
                                        .frame(width: getRelativeWidth(31.0),
                                               height: getRelativeHeight(30.0), alignment: .center)
                                        .scaledToFit()
                                        .clipped()
                                        .padding(.leading, getRelativeWidth(63.0))
                                }
                                .frame(width: getRelativeWidth(281.0),
                                       height: getRelativeHeight(31.0), alignment: .bottom)
                            }
                            .frame(width: getRelativeWidth(384.0), height: getRelativeHeight(33.0),
                                   alignment: .leading)
                            Image("img_vector_bluegray_700")
                                .resizable()
                                .frame(width: getRelativeWidth(5.0), height: getRelativeHeight(2.0),
                                       alignment: .center)
                                .scaledToFit()
                                .clipped()
                                .padding(.horizontal, getRelativeWidth(13.0))
                        }
                        .padding(.leading, getRelativeWidth(10.0))
                        .padding(.trailing, getRelativeWidth(19.0))
                    }
                    .frame(width: UIScreen.main.bounds.width - 20, height: getRelativeHeight(62.0),
                           alignment: .leading)
                    .background(ColorConstants.Gray900)
                    HStack {
                        HStack {
                            VStack(alignment: .leading, spacing: 0) {
                                Image("img_vaadinqrcode")
                                    .resizable()
                                    .frame(width: getRelativeWidth(19.0),
                                           height: getRelativeHeight(14.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.horizontal, getRelativeWidth(3.0))
                                Text(StringConstants.kLblHome)
                                    .font(FontScheme.kInterRegular(size: getRelativeHeight(8.0)))
                                    .fontWeight(.regular)
                                    .foregroundColor(ColorConstants.WhiteA700)
                                    .minimumScaleFactor(0.5)
                                    .multilineTextAlignment(.leading)
                                    .frame(width: getRelativeWidth(23.0),
                                           height: getRelativeHeight(10.0), alignment: .topLeading)
                                    .padding(.top, getRelativeHeight(5.0))
                            }
                            .frame(width: getRelativeWidth(23.0), height: getRelativeHeight(30.0),
                                   alignment: .bottom)
                            Divider()
                                .frame(width: getRelativeWidth(1.0),
                                       height: getRelativeHeight(41.0), alignment: .center)
                                .background(ColorConstants.LightBlue900)
                                .padding(.leading, getRelativeWidth(47.0))
                            ZStack(alignment: .leading) {
                                Image("img_1hall1")
                                    .resizable()
                                    .frame(width: getRelativeWidth(98.0),
                                           height: getRelativeHeight(41.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                                    .padding(.leading, getRelativeWidth(19.11))
                                    .padding(.trailing, getRelativeWidth(25.89))
                                Image("img_screenshot2023_66x143")
                                    .resizable()
                                    .frame(width: getRelativeWidth(143.0),
                                           height: getRelativeHeight(66.0), alignment: .center)
                                    .scaledToFit()
                                    .clipped()
                            }
                            .hideNavigationBar()
                            .frame(width: getRelativeWidth(143.0), height: getRelativeHeight(66.0),
                                   alignment: .center)
                            .padding(.leading, getRelativeWidth(10.0))
                            Divider()
                                .frame(width: getRelativeWidth(1.0),
                                       height: getRelativeHeight(41.0), alignment: .top)
                                .background(ColorConstants.LightBlue900)
                                .padding(.leading, getRelativeWidth(5.0))
                        }
                        .frame(width: getRelativeWidth(232.0), height: getRelativeHeight(66.0),
                               alignment: .center)
                        Image("img_11")
                            .resizable()
                            .frame(width: getRelativeWidth(63.0), height: getRelativeHeight(41.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(11.0))
                            .padding(.horizontal, getRelativeWidth(29.0))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: getRelativeHeight(69.0),
                           alignment: .leading)
                    .background(ColorConstants.Indigo900)
                    HStack {
                        Text(StringConstants.kLbl2)
                            .font(FontScheme.kInterSemiBold(size: getRelativeHeight(23.0)))
                            .fontWeight(.semibold)
                            .foregroundColor(ColorConstants.WhiteA700)
                            .minimumScaleFactor(0.5)
                            .multilineTextAlignment(.leading)
                            .frame(width: getRelativeWidth(14.0), height: getRelativeHeight(28.0),
                                   alignment: .topLeading)
                            .padding(.vertical, getRelativeHeight(95.0))
                            .padding(.leading, getRelativeWidth(11.0))
                            .onTapGesture {
                                pagefourViewModel.nextScreen = "PagethreeView"
                            }
                        Image("img_5page1")
                            .resizable()
                            .frame(width: getRelativeWidth(378.0), height: getRelativeHeight(682.0),
                                   alignment: .center)
                            .scaledToFit()
                            .clipped()
                            .padding(.vertical, getRelativeHeight(19.0))
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
                                   selection: $pagefourViewModel.nextScreen,
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

struct PagefourView_Previews: PreviewProvider {
    static var previews: some View {
        PagefourView()
    }
}
