# New Saudi Riyal Symbol 
<img src="https://github.com/Mohamed-AbdulRaouf/SaudiRiyal/blob/master/SaudiRiyal/Screenshots/Screenshot03.png" alt="SF symbol for the Saudi Riyal">

# Add a new SF symbol for the Saudi Riyal


# Screenshots
<img src="https://github.com/Mohamed-AbdulRaouf/SaudiRiyal/blob/master/SaudiRiyal/Screenshots/Screenshot01.png" alt="SF symbol for the Saudi Riyal">

<img src="https://github.com/Mohamed-AbdulRaouf/SaudiRiyal/blob/master/SaudiRiyal/Screenshots/Screenshot02.png" alt="SF symbol for the Saudi Riyal">

The example with SwiftUI, but you can use it with storyboad also with UIImage(named: "Saudi_Riyal_Symbol") 


# here the code with SwiftUI 

<details>
<summary>Code With SwiftUI</summary>

```swift
struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("Saudi_Riyal_Symbol")
                    .imageScale(.large)
                    .foregroundStyle(.black)
                Text("1200.20")
                    .font(.largeTitle)
            }
            Divider()
            HStack {
                Image("Saudi_Riyal_Symbol.circle")
                    .font(.title)
                    .foregroundStyle(.black)
                Text("1200.20")
                    .font(.largeTitle)
            }
            Divider()
            Text("New Saudi Riyal Symbol")
                .fontWeight(.bold)
        }
        .padding()
    }
}
```
</details>
  

# here the code with Swift 

<details>
<summary>Code With Swift</summary>

```swift

func getSaudiRiyalSymbol(value: String, isDiscounted: Bool = false) -> NSAttributedString {
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = UIImage(named: "Saudi_Riyal_Symbol") // SF Symbol (or use a custom image)
        if isDiscounted {
            imageAttachment.bounds = CGRect(x: 0, y: 0, width: 12, height: 12) // Adjust position
        } else {
            imageAttachment.bounds = CGRect(x: 0, y: -3, width: 16, height: 16) // Adjust position
        }
        let label = UILabel()
        let fullString = NSMutableAttributedString(string: "")
        fullString.append(NSAttributedString(attachment: imageAttachment))
        fullString.append(NSAttributedString(string: " \(value) "))
        if isDiscounted {
            fullString.addAttribute(NSAttributedString.Key.strikethroughStyle, value: NSUnderlineStyle.single.rawValue, range: NSRange(location: 0, length: value.length + 2))
            fullString.addAttribute(NSAttributedString.Key.strikethroughColor, value: UIColor.AppTheme_StrikeThroughColor_707070, range: NSRange(location: 0, length: value.length + 2))
        }
        label.attributedText = fullString
        return label.attributedText ?? NSAttributedString(string: "")
    }

# to use it =>
label.attributedText = getSaudiRiyalSymbol(value: "1200.06") 

```
</details>
  
# Support Me ☕️
<a href="https://buymeacoffee.com/mohamed.a.raouf" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: 41px !important;width: 174px !important;box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;-webkit-box-shadow: 0px 3px 2px 0px rgba(190, 190, 190, 0.5) !important;" ></a>
