import "dart:html";

import 'package:mdl/mdl.dart';

DivElement wrapper = querySelector('#wrapper');
ButtonElement button = querySelector("#customdialog");

main() async {
  registerMdl();
  await componentFactory().run();
  MyDialog myDialog = new MyDialog();

  button.onClick.listen((_) => myDialog.show());
}


class MyDialog extends MaterialDialog {

  MyDialog() : super(new DialogConfig());

  onNo() => close(MdlDialogStatus.NO);
  onYes() => close(MdlDialogStatus.YES);

  String template = '''
  <div class="mdl-dialog">
  <div class="mdl-dialog__content">
    <p>Will this work ... ?</p>
  </div>
  <div class="mdl-dialog__actions">
    <button class="mdl-button mdl-js-button" data-mdl-click="onNo()">No</button>
    <button class="mdl-button mdl-js-button" data-mdl-click="onYes()">Yes</button>
  </div>
</div>
  ''';
}
