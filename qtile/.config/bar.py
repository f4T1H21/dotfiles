from libqtile import bar, widget
from colors import Colors
from unicodes import left_half_circle, right_half_circle, left_arrow, right_arrow
import subprocess

c = Colors('nightfox')
my_bar = bar.Bar(
    [
        #widget.Image(
        #    filename = '~/.config/qtile/icons/arch.png',
        #    scale = 'False',
        #    margin_x = 8,
        #    mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn(file_launcher2)}
        #    ),
        widget.GroupBox(
            fontsize = 40,
            padding=12,
            disable_drag=True,
            active = c.active,
            inactive = c.inactive,
            highlight_color = [c.bg0, c.workspace],
            highlight_method = 'text',
        ),
        widget.CurrentLayout(
            background=c.red,
            foreground=c.white,
            margin=10,
        ),
        widget.Spacer(
        length=bar.STRETCH
        ),
        widget.CheckUpdates(
            update_interval = 1800,
            distro = "Arch",
            display_format = "  {updates}",
            foreground = c.cyan,
            colour_have_updates = c.magenta,
            colour_no_updates = c.magenta,
            padding = 5,
            background = c.bg0,
        ),
        left_arrow(c.bg0, c.green),
        widget.GenPollText(
            update_interval=1,
            background = c.green,
            foreground = c.red,
            func=lambda: "  "  + subprocess.check_output(["/home/efe/.config/qtile/qtile_widgets.sh", "wireless"]).decode("utf-8"), 
        ),
        widget.GenPollText(
            update_interval=1,
            background = c.green,
            foreground = c.red,
            func=lambda: "󰈀  "  + subprocess.check_output(["/home/efe/.config/qtile/qtile_widgets.sh", "wired"]).decode("utf-8"), 
        ),
#        widget.CPU(
#        update_interval=5,
#        format=' {freq_current}GHz {load_percent}%',
#        background=c.black,
#        foreground=c.pink
#        ),
        widget.CPUGraph(
            core=all,
        ),
        widget.Memory(
        update_interval=5,
        format='  {MemUsed:.0f}{mm}',
        background=c.cyan
        ),
        widget.PulseVolume(
            update_interval=0.0001,
            foreground = c.magenta,
            background = c.fg0,
            fmt="  {}"
        ),
        widget.Battery(
            mouse_callbacks = {'Button1': lambda: qtile.cmd_spawn("bash pavucontrol")},
            charge_char ='',
            discharge_char = '',
            format = '{percent:2.0%} {char}',
            fmt='    {}',
            low_percentage = 0.1,
            low_foreground = c.orange,
            foreground = c.blue,
            background = c.bg0,
        ),
        widget.Clock(
            format='  %a, %d/%m/%Y',
            foreground = c.bg0,
            background = c.green,
        ),
        widget.Clock(
            format='%H.%M',
            foreground = c.fg3,
            background = c.bg0,
        ),
        widget.Systray(),
        widget.QuickExit(
            fmt = ' ',
            foreground = c.yellow,
        ),

    ],
    size=50,
    background=c.bg0
)
"""        widget.Prompt(
           ),
        widget.TextBox(
            text='\u25e2',
            padding = 0,
            fontsize = 50,
            background = c.bg0,
            foreground = c.workspace),
        
        widget.CurrentLayout(
            scale = 0.7,
            background = c.workspace,
            ),
        widget.TextBox(
            text='\u25e2',
            padding = 0,
            fontsize = 50,
            background = c.workspace,
        foreground = c.bg0
            ),
        widget.WindowName(
            foreground = c.green,
            ),
        widget.Chord(
            chords_colors = {
                'launch': (c.bg0, c.fg0),
            },
            name_transform=lambda name: name.upper(),
            ),
        widget.TextBox(
            text='\u25e2',
            padding = 0,
            fontsize = 50,
            background = c.bg0,
            foreground = c.fg0
            ),
        widget.TextBox(
            text='\u25e2',
            padding = 0,
            fontsize = 14,
            background = c.bg0,
            foreground = c.fg0
            ),
        
        widget.Volume(
            foreground = colors[4],
            background = c.fg0Two,
            fmt = ': {}',
            padding = 8
            ),

        widget.Battery(
            charge_char ='',
            discharge_char = '',
            format = '  {percent:2.0%} {char}',
            foreground = colors[6],
            background = c.fg0Two,
            padding = 8
            ),
        widget.TextBox(
            text='\u25e2',
            padding = 0,
            fontsize = 50,
            background = c.fg0Two,
            foreground = c.bg0
            ),
        widget.Systray(
            padding = 8
            ),
        widget.Clock(format=' %I:%M %p',
            foreground = colors[5],
            background = c.bg0,
            padding = 8
            ),
        widget.QuickExit(
            fmt = ' ',
            foreground = colors[9],
            padding = 8
            ),              
    ],
    20,
)"""
