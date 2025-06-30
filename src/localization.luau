local tools = {}

--i dont know all of these languages
--all of these are google translated
--you dont need this if you know English

--if you know any of these languages and the translation sucks just ask to be a translator

local lang =  {
    --Template
    --stringName = "en|es|fr|de|nl|pl|ua|ru|zh|jp|kr";
    shouldBeRanLocalScript = " should be ran from a LocalScript| debe ejecutarse desde un LocalScript| doit être exécuté à partir d'un LocalScript| sollte von einem LocalScript ausgeführt werden| moet worden uitgevoerd vanuit een LocalScript| powinien być uruchamiany z LocalScript| слід запускати з LocalScript| следует запускать из LocalScript|  应该从 LocalScript 运行|はLocalScriptから実行する必要があります|은 LocalScript에서 실행해야 합니다";

    UsingVRString = " is using VR| está usando realidad virtual| utilise la réalité virtuelle| nutzt VR| maakt gebruik van VR| korzysta z VR| використовує VR| использует VR| 正在使用 VR| はVRを使用しています|는 VR을 사용하고 있습니다";
    NotUsingVRString = " is not using VR| no está usando realidad virtual| n'utilise pas la virtuelle| nutzt keine VR| maakt geen gebruik van VR| nie używa VR| не використовує VR| не использует VR| 没有使用 VR| はVRを使用していません|는 VR을 사용하지 않고 있습니다";
}

local languages = {
    "en";
    "es";
    "fr";
    "de";
    "nl";
    "pl";
    "ua";
    "ru";
    "zh";
    "jp";
    "kr";
}

function tools:getLanguage(str: string, language: string)
    local fullLocalization = lang[str]
    local localizeTable = fullLocalization:split("|")

    local index = table.find(languages, language)   

    return localizeTable[index]
end

return tools