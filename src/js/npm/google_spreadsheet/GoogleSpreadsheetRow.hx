package js.npm.google_spreadsheet;

import js.lib.Promise;

extern class GoogleSpreadsheetRow implements Dynamic<String> {
    public function save():Promise<Void>;
    public function delete():Promise<Void>;
}