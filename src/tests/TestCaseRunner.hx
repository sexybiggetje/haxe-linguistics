package tests;

import tests.TestCaseBasicTokenizer;
import tests.TestCaseDictionary;

class TestCaseRunner {

    static function main():Void {

        var runner = new haxe.unit.TestRunner();

        runner.add( new TestCaseBasicTokenizer() );
        runner.add( new TestCaseDictionary() );

        var success = runner.run();

        #if sys
        Sys.exit(success ? 0 : 1);
        #end

    }
}