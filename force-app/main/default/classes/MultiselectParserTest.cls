@isTest
public class MultiselectParserTest {

    @isTest
    static void checkValuesTest() {
        // Input data for the test case
        List<String> inputList = new List<String>{'Lorem;Ipsum;Dolor'};
        
        // Expected output for the test case
        List<List<String>> output = new List<List<String>> {
            new List<String>{'Lorem', 'Ipsum', 'Dolor'}
        };

        // Positive test case
        // Execute the method being tested
        List<List<String>> testOutput = MultiselectParser.checkValues(inputList);
        
        // Verify the result matches the expected output
        System.assertEquals(output, testOutput, 'Positive test case failed');
        
        // Negative test case
        // Prepare input data for the negative test case (empty list)
        inputList = new List<String>();
        
        // Expected output for the negative test case
        List<List<String>> emptyOutput = null;
        
        // Execute the method being tested
        testOutput = MultiselectParser.checkValues(inputList);
        
        // Verify the result matches the expected output
        System.assertEquals(emptyOutput, testOutput, 'Negative test case failed');
        
    }
}
