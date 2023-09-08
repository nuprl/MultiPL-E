def toLowerCase(s: str) -> str:
    """
    Given a string s, return the string after replacing every uppercase letter with the same lowercase letter.
 
    Example 1:

    Input: s = "Hello"
    Output: "hello"

    Example 2:

    Input: s = "here"
    Output: "here"

    Example 3:

    Input: s = "LOVELY"
    Output: "lovely"

 
    Constraints:

    1 <= s.length <= 100
    s consists of printable ASCII characters.

    """
    ### Canonical solution below ###
    return s.lower()




### Unit tests below ###
def check(candidate):
	assert candidate("C#") == "c#"
	assert candidate("JQUERY MOBILE") == "jquery mobile"
	assert candidate("PYQT") == "pyqt"
	assert candidate("GOOGLE") == "google"
	assert candidate("JAVASCRIPTREACTJS") == "javascriptreactjs"
	assert candidate("VUEJSCHAT") == "vuejschat"
	assert candidate("JAVASCRIPTVUEJS") == "javascriptvuejs"
	assert candidate("REVERSEPROXY") == "reverseproxy"
	assert candidate("NPM") == "npm"
	assert candidate("PYTORCH") == "pytorch"
	assert candidate("PLUTO") == "pluto"
	assert candidate("RUBY") == "ruby"
	assert candidate("UNITY") == "unity"
	assert candidate("THREEJS") == "threejs"
	assert candidate("GOLAND") == "goland"
	assert candidate("AMAZON WEB SERVICES") == "amazon web services"
	assert candidate("C# .NET") == "c# .net"
	assert candidate("ELECTRON") == "electron"
	assert candidate("JAVASCRIPTC#") == "javascriptc#"
	assert candidate("SDL") == "sdl"
	assert candidate("D") == "d"
	assert candidate("NEXTCLOUD") == "nextcloud"
	assert candidate("LUCKY") == "lucky"
	assert candidate("QT") == "qt"
	assert candidate("C") == "c"
	assert candidate("TOP10REQUESTS") == "top10requests"
	assert candidate("SOCKETS") == "sockets"
	assert candidate(
    "AMAZON WEB SERVICES AWS") == "amazon web services aws"
	assert candidate("KUBERNETES") == "kubernetes"
	assert candidate("ASSEMBLY") == "assembly"
	assert candidate("SCALA") == "scala"
	assert candidate("PHP") == "php"
	assert candidate("FLASK") == "flask"
	assert candidate("JULIA") == "julia"
	assert candidate("TYPESCRIPT") == "typescript"
	assert candidate("REACTJS") == "reactjs"
	assert candidate("NODEJS") == "nodejs"
	assert candidate(
    "NATIVE SCRIPT") == "native script"
	assert candidate("DJANGO REST") == "django rest"
	assert candidate("JAVASCRIPTNUXTJS") == "javascriptnuxtjs"
	assert candidate("XCODE") == "xcode"
	assert candidate("VUEJSFUNDAMENTALS") == "vuejsfundamentals"
	assert candidate("EXPRESS") == "express"
	assert candidate("KOTLIN") == "kotlin"
	assert candidate("CSSHTML") == "csshtml"
	assert candidate(
    "EXCEL") == "excel"
	assert candidate("SQL") == "sql"
	assert candidate("JAVA") == "java"
	assert candidate("FLUTTER") == "flutter"
	assert candidate("JAVASCRIPT") == "javascript"
	assert candidate("NUXTJS") == "nuxtjs"
	assert candidate("PYTEST") == "pytest"
	assert candidate("VUEJS") == "vuejs"
	assert candidate("TUTORIALS") == "tutorials"
	assert candidate("PERL") == "perl"
	assert candidate("TENSORFLOW") == "tensorflow"
	assert candidate("REACT") == "react"
	assert candidate("DJANGO") == "django"
	assert candidate("GITHUB") == "github"
	assert candidate("SPRINGBOOT") == "springboot"
	assert candidate(
    "ELECTRON") == "electron"
	assert candidate("SWIFT") == "swift"
	assert candidate("SCSS") == "scss"
	assert candidate("BASH") == "bash"
	assert candidate("JENKINS") == "jenkins"
	assert candidate("HELP") == "help"
	assert candidate("GODOT") == "godot"
	assert candidate("ERLANG") == "erlang"
	assert candidate("EXPRESSJS") == "expressjs"
	assert candidate("JAVASCRIPTDJANGO") == "javascriptdjango"
	assert candidate("Hello") == "hello"
	assert candidate("REDUX") == "redux"
	assert candidate("RUST") == "rust"
	assert candidate("ASP.NET") == "asp.net"
	assert candidate("DOCKER") == "docker"
	assert candidate("GO") == "go"
	assert candidate(
    "NEURAL NETWORKS AND DEEP LEARNING") == "neural networks and deep learning"
	assert candidate("ANGULARJS") == "angularjs"
	assert candidate("VUE") == "vue"
	assert candidate("CSHARP") == "csharp"
	assert candidate("COBOL") == "cobol"
	assert candidate("GOLANG") == "golang"
	assert candidate("CSS") == "css"
	assert candidate("HASKELL") == "haskell"
	assert candidate(
    "NEXTFRAMEWORK") == "nextframework"
	assert candidate("ESP8266") == "esp8266"
	assert candidate("HUGO") == "hugo"
	assert candidate("GOLF") == "golf"
	assert candidate("DENO") == "deno"
	assert candidate("VUE.JS") == "vue.js"
	assert candidate("VSCODE") == "vscode"
	assert candidate("C++") == "c++"
	assert candidate("GITHUBREPOSITORY") == "githubrepository"
	assert candidate("LOVELY") == "lovely"
	assert candidate("GIT") == "git"
	assert candidate("ANSIBLE") == "ansible"
	assert candidate("JAVASCRIPTFLASK") == "javascriptflask"
	assert candidate("FORTAN") == "fortan"
	assert candidate("DIGITALOCEAN") == "digitalocean"
	assert candidate("PYTHON") == "python"
	assert candidate("ASPNET5") == "aspnet5"
	assert candidate("VUE PRESS") == "vue press"
	assert candidate("CRYENGINE") == "cryengine"
	assert candidate("LUA") == "lua"
	assert candidate("SOCKET.IO") == "socket.io"
	assert candidate("XAMARIN") == "xamarin"
	assert candidate("RUBYONRAILS") == "rubyonrails"
	assert candidate("PYTHON 3") == "python 3"
	assert candidate("GRAPHQL") == "graphql"
	assert candidate("GOOD") == "good"
	assert candidate("RAILS") == "rails"
	assert candidate("V8") == "v8"
	assert candidate("FASTAPI") == "fastapi"
	assert candidate("HTML") == "html"
	assert candidate("HERE") == "here"
	assert candidate("JQUERY") == "jquery"
	assert candidate("DART") == "dart"
	assert candidate("C++11") == "c++11"
	assert candidate("ELIXIR") == "elixir"
	assert candidate("UNREAL") == "unreal"
def test_check():
	check(toLowerCase)
# Metadata Difficulty: Easy
# Metadata Topics: string
# Metadata Coverage: 100
