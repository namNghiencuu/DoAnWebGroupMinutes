package minutes.com.services;

import java.sql.Array;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;

public class ArrayToArrayList {
	public ArrayList<Integer> arrayToIntArrayList(Array array) throws SQLException {
		if (array == null)
		{
			return null;
		}
		ArrayList<Integer> result = new ArrayList<>();
	    Integer[] intArray = (Integer[]) array.getArray();
	    Collections.addAll(result, intArray);
	    return result;
	};
	public ArrayList<String> arrayToStringArrayList(Array array) throws SQLException {
		if (array == null)
		{
			return null;
		}
		ArrayList<String> result = new ArrayList<>();
	    String[] intArray = (String[]) array.getArray();
	    Collections.addAll(result, intArray);
	    return result;
	};
	
}
