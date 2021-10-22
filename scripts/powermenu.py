#!/bin/env python3

import os
import subprocess

action = subprocess.getoutput("echo '\n\n\n' | rofi -theme ~/.config/rofi/powermenu.rasi -dmenu")

actions = {
    "": ["Apagar", "shutdown now"],
    "": ["Reiniciar","reboot"],
    "": ["Cerrar Sesion","loginctl terminate-user 1000"],
    "": ["Bloquear","~/.config/scripts/lock.sh"],
}

if action in actions.keys():
    confirm="Confirmar"
    if action not in ["", ""]:
        confirm = subprocess.getoutput("echo 'Corfirmar\nCancelar' | rofi -theme ~/.config/rofi/confirm.rasi -p {0} -dmenu".format("'Seguro que quieres " + actions[action][0] + "?'"));
    if confirm=="Confirmar":
        os.system(actions[action][1])
