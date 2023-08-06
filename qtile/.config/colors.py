# Written by Şefik Efe Altınoluk aka f4T1H21

class Colors:
    def __init__(self, scheme_name):
        for color, value in eval(scheme_name).items():
            exec(f'self.{color} = "{value}"')

nightfox = {
    "black"   : "#393b44",
    "red"     : "#c94f6d",
    "green"   : "#81b29a",
    "approved": "#8affa1",
    "yellow"  : "#dbc074",
    "blue"    : "#719cd6",
    "magenta" : "#9d79d6",
    "cyan"    : "#63cdcf",
    "white"   : "#dfdfe0",
    "orange"  : "#f4a261",
    "pink"    : "#d67ad2",

    "comment" : "#738091",

    "bg0"     : "#131a24",
    "bg1"     : "#192330",
    "bg2"     : "#212e3f",
    "bg3"     : "#29394f",
    "bg4"     : "#39506d",

    "fg0"     : "#d6d6d7",
    "fg1"     : "#cdcecf",
    "fg2"     : "#aeafb0",
    "fg3"     : "#71839b",

    "sel0"    : "#2b3b51",
    "sel1"    : "#3c5372",

    "active": "#c89a2d",
    "inactive": "#6e644c",
    "workspace": "#28417b"
}

