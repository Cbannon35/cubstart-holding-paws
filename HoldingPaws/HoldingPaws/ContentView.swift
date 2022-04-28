//
//  ContentView.swift
//  HoldingPaws
//
//  Created by Aria Chen on 2022/4/24.
//


import SwiftUI


let GreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

let skyblue = Color(red: 137.0/255.0, green: 213.0/255.0, blue: 255.0/255.0, opacity: 1.0)

let gradient = LinearGradient(gradient: Gradient(colors: [Color(red: 255.0/255.0, green: 184.0/255.0, blue: 160.0/255.0), Color(red: 230.0/255.0, green: 162.0/255.0, blue: 250.0/255.0)]), startPoint: .top, endPoint: .bottom)

struct HiddenNavigationBar: ViewModifier {
    func body(content: Content) -> some View {
        content
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
    }
}

extension View {
    func hiddenNavigationBarStyle() -> some View {
        modifier( HiddenNavigationBar() )
    }
}


struct ContentView : View {
    
    init(){
        UINavigationBar.appearance().backgroundColor = .clear
    }
    
    @State var username: String = ""
    @State var password: String = ""
    
    //Login View
    var body: some View {
        NavigationView{
            ZStack{
                gradient
                    .ignoresSafeArea()
                
                VStack {
                    Welcome()
                    Logo()
                    TextField("Username", text: $username)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    SecureField("Password", text: $password)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    
                    NavigationLink(destination: RegistrationView()) {
                            Text("Go!")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .navigationBarBackButtonHidden(true)
                    .aspectRatio(contentMode: .fill)
                }
                .padding()
            }
            .hiddenNavigationBarStyle()
        }
        .padding()
    }
}

struct Welcome : View {
    var body: some View {
        return Text("Welcome!")
            .font(.largeTitle)
            .foregroundColor(.white)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
    }
}

struct Logo : View {
    var body: some View {
        return Image("paw")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .padding(.bottom, 75)
    }
}


//Registration View
struct RegistrationView: View {
    
    @State var name: String = ""
    @State var age: String = ""
    @State var location: String = ""
    @State var gender: String = ""
    @State var breed: String = ""
    
    var body: some View {
        NavigationView{
            ZStack{
                gradient
                    .ignoresSafeArea()
                
                
                VStack {
                    
                    Photo()
                    
                    Text("Tell us a few things about your pet")
                        .foregroundColor(.white)
                    
                    TextField("Name", text: $name)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    TextField("Age", text: $age)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    TextField("Location", text: $location)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    TextField("Gender", text: $gender)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    TextField("Breed", text: $breed)
                        .padding()
                        .background(skyblue)
                        .cornerRadius(5.0)
                        .padding(.bottom, 20)
                    
                    NavigationLink(destination: ProfileView()) {
                            Text("Register")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                    }
                    .navigationBarBackButtonHidden(true) // not working
                    .aspectRatio(contentMode: .fill)
                }
                .padding()
                
            }
            .hiddenNavigationBarStyle()
        }

    }
}

struct Photo : View {
    var body: some View {
        return Image("camera")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .scaledToFit()
            .frame(width: 150, height: 150, alignment: .center)
            .padding(.bottom, 20)
    }
}

//Profile View
struct ProfileView: View {
    var body: some View {
        TabView{
            NavigationView{
                ZStack{
                    gradient
                        .ignoresSafeArea()
                    
                    VStack {
                        Image("1")
                            .resizable()
                            .clipShape(Circle())
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 100, height: 100)
                            .scaledToFit()
                            .padding(.bottom, 20)
                        
                        Text("Buddy")
                            .fontWeight(.bold)
                            .font(.title)
                            .padding()
                            .background(skyblue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(skyblue, lineWidth: 0)
                            )
                        
                        Text("USERNAME: buddy123")
                            .foregroundColor(.white)
                        
                        Text("AGE: 4 Years Old")
                            .foregroundColor(.white)
                        
                        Text("LOCATION: Berkeley, CA")
                            .foregroundColor(.white)
                        
                        Text("PERSONALITY: Active, Playful, Fun")
                            .foregroundColor(.white)
                        
                        .padding(.bottom, 10)
                        
                        Text("Contact Info")
                            .foregroundColor(.white)
                        
                        Text("493-2913-2934")
                            .fontWeight(.bold)
                            .padding()
                            .background(skyblue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(skyblue, lineWidth: 0)
                            )
                        
                        .padding(.bottom, 10)
                        
                        Text("Your Friends")
                            .foregroundColor(.white)
                        
                        Text("chellsee, bobbingi, leonard0")
                            .fontWeight(.bold)
                            .padding()
                            .background(skyblue)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .padding(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 40)
                                    .stroke(skyblue, lineWidth: 0)
                            )

                    }
                    .padding()
                    
                    .tabItem{
                        Image(systemName: "settings")
                        Text("Setting")
                    }
                
                    .tabItem{
                        Image(systemName: "paw-line")
                        Text("Profile")
                    }
                
                    .tabItem{
                        Image(systemName: "messenger")
                        Text("Message")
                    }
                }

            }

        }

    }
}

// Chat View
