<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Text Editor</title>
    <link
      rel="stylesheet"
      href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
      integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
      crossorigin="anonymous"
    />
  </head>
  <body onload="enableEditMode();">
    <div>
      <button onclick="execCmd('bold');"><i class="fas fa-bold"></i></button>
      <button onclick="execCmd('italic');">
        <i class="fas fa-italic"></i>
      </button>
      <button onclick="execCmd('underline');">
        <i class="fas fa-underline"></i>
      </button>
      <button onclick="execCmd('strikethrough');">
        <i class="fas fa-strikethrough"></i>
      </button>
      <button onclick="execCmd('justifyLeft');">
        <i class="fas fa-align-left"></i>
      </button>
      <button onclick="execCmd('justifyCenter');">
        <i class="fas fa-align-center"></i>
      </button>
      <button onclick="execCmd('justifyRight');">
        <i class="fas fa-align-right"></i>
      </button>
      <button onclick="execCmd('justifyFull');">
        <i class="fas fa-align-justify"></i>
      </button>
      <button onclick="execCmd('cut');"><i class="fas fa-cut"></i></button>
      <button onclick="execCmd('copy');"><i class="fas fa-copy"></i></button>
      <button onclick="execCmd('indent');">
        <i class="fas fa-indent"></i>
      </button>
      <button onclick="execCmd('subscript');">
        <i class="fas fa-subscript"></i>
      </button>
      <button onclick="execCmd('superscript');">
        <i class="fas fa-superscript"></i>
      </button>
      <button onclick="execCmd('undo');"><i class="fas fa-undo"></i></button>
      <button onclick="execCmd('repeat');">
        <i class="fas fa-repeat"></i>
      </button>
      <button onclick="execCmd('insertUnorderList');">
        <i class="fas fa-list-ul"></i>
      </button>
      <button onclick="execCmd('insertOrderList');">
        <i class="fas fa-list-ol"></i>
      </button>
      <button onclick="execCmd('insertParagraph');">
        <i class="fas fa-paragraph"></i>
      </button>
      <select onchange="execCommandWithArg('fontName',this.value);">
        <option value="H1">H1</option>
        <option value="H2">H2</option>
        <option value="H3">H3</option>
        <option value="H4">H4</option>
        <option value="H5">H5</option>
        <option value="H6">H6</option>
      </select>
      <button onclick="execCmd('insertHorizontalRule');">HR</button>
      <button
        onclick="execCommandWithArg('createlink',prompt('Enter a URL','http://'));"
      >
        <i class="fas fa-link"></i>
      </button>
      <button onclick="execCmd('unlink');">
        <i class="fas fa-unlink"></i>
      </button>
      <button onclick="toggleSource;"><i class="fas fa-code"></i></button>
      <button onclick="toggleEdit;">Toggle Edit</button>
      <br />
      <select>
        <option value="Arial">Arial</option>
        <option value="Comic Sans MS">Comic Sans MS</option>
        <option value="Courier">Courier</option>
        <option value="Georgia">Georgia</option>
        <option value="Tahoma">Tahoma</option>
        <option value="Times New Roman">Times New Roman</option>
        <option value="Verdana">Verdana</option>
      </select>
      <select onchange="execCommandWithArg('fontSize',this.value);">
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
        <option value="4">4</option>
        <option value="5">5</option>
        <option value="6">6</option>
        <option value="7">7</option>
      </select>
      Fore Color:<input
        type="color"
        onchange="execCommandWithArg('foreColor',this.value);"
      />
      Background :<input
        type="color"
        onchange="execCommandWithArg('hiliteColor',this.value);"
      />
      <button
        onclick="execCommandWithArg('Insert an Image',prompt('Enter an Image URL',''));"
      >
        <i class="fas fa-file-image-o"></i>
      </button>
      <button onclick="execCmd('SelectAll');">Select All</button>
    </div>
    <iframe name="richTextField" style="width:830px;height:300px;"></iframe>
    <script type="text/javascript">
      var showingSourceCode = false;
      var isInEditMode = true;
      function enableEditMode() {
        richTextField.document.designMode = "On";
      }
      function execCmd(command) {
        richTextField.document.execCommand(command, false, null);
      }
      function execCommandWithArg(command, arg) {
        richTextField.document.execCommand(command, false, arg);
      }
      function toggleSource() {
        if (showingSourceCode) {
          richTextField.document.getElementsByTagName(
            "body"
          )[0].innerHTML = richTextField.document.getElementsByTagName(
            "body"
          )[0].textContent;
          showingSourceCode = false;
        } else {
          richTextField.document.getElementsByTagName(
            "body"
          )[0].textContent = richTextField.document.getElementsByTagName(
            "body"
          )[0].innerHTML;
          showingSourceCode = true;
        }
      }
      function toggleEdit() {
        if (isInEditMode) {
          isInEditMode = False;
        } else {
          isInEditMode = true;
        }
      }
    </script>
  </body>
</html>