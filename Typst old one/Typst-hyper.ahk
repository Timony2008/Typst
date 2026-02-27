#Requires AutoHotkey v2.0

; --- 解决“打架”问题的 Typst 增强脚本 ---

; 输入 mk 替换为 $$ 并将光标移到中间
:*:mk::
{
    bak := A_Clipboard          ; 备份当前剪贴板
    A_Clipboard := "$$"         ; 将目标字符放入剪贴板
    Send("^v")                  ; 粘贴
    Sleep(50)                   ; 等待一小会儿确保粘贴完成
    Send("{Left 1}")            ; 光标左移
    A_Clipboard := bak          ; 还原原来的剪贴板
}

; 输入 dm 替换为 $  $ 并将光标移到中间
; 提示：Typst 的整行公式通常建议写作 $ 内容 $（前后有空格）
:*:dm::
{
    bak := A_Clipboard
    A_Clipboard := "$  $"
    Send("^v")
    Sleep(50)
    Send("{Left 2}")
    A_Clipboard := bak
}

:*:iso::
{
    A_Clipboard := " tilde.equiv "
    Send("^v")
}