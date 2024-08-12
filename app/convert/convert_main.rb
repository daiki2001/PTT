require_relative "convert_stdout"

def ConvertMain (text)
  safe_text = text.gsub("\\", "\\\\\\\\") # バックスラッシュをエスケープ
                  .gsub("'", "\\\\'") # シングルクォートをエスケープ
                  .gsub("\"", "\\\"") # ダブルクォートをエスケープ
  convertStdout(safe_text)
end #def convertMain()
