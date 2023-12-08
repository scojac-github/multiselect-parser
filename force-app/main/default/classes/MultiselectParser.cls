/**
 * @ Author: Scott Jacobson
 * @ Create Time: 2023-12-07 16:52:45
 * @ Description: Invocable action for Flows to parse multiselect picklist fields and turn them into an iterable list of strings
 */

global class MultiselectParser {
    
    /**
     * Invocable method to parse multiselect picklist values into an iterable list of strings.
     * 
     * @param mspList List of multiselect picklist values to be parsed.
     * @return List of lists of strings where each sublist represents the parsed values.
     **/

    @InvocableMethod(label='Parse Multiselect Picklist' description='Split multiselect picklist values into an iterable list of strings' category='Custom Action')

    public static List<List<String>> checkValues(List<String> mspList) {
        // Check if the input list is not empty
        if (!mspList.isEmpty()) {
            // If not empty, assume the first element of the multiselect picklist and split by ';'
            String temporaryString = mspList[0];
            List<String> splitStringList = temporaryString.split(';');

            // Create a list of lists to hold the parsed values
            List<List<String>> returnedList = new List<List<String>>();
            
            // Add the split values to the list
            returnedList.add(splitStringList);
            
            // Return the list of parsed values
            return returnedList;
        } else {
            // If the input list is empty, return null (no values to parse)
            return null;
        }
    }
}