class Solution {

    public static void swapIndexes(int[] arr, int elementOne, int elementTwo) {
        int temp = arr[elementOne];
        arr[elementOne] = arr[elementTwo];
        arr[elementTwo] = temp;
    }

    public static int partition(int[] arr, int start, int end) {
        int pivot = arr[end];
        int smallElementIndex = start -1;

        for (int currentIndex = start; currentIndex < end; currentIndex++) {
            int currentElement = arr[currentIndex];
            if ( currentElement < pivot) {
                smallElementIndex++;
                swapIndexes(arr, currentIndex, smallElementIndex);
            }
        }
        smallElementIndex++;
        swapIndexes(arr, end, smallElementIndex); // end = index of pivot && 
        //smallElementIndex + 1 because we have the smallest element currently in smallElementIndex, so we 
        // want to move the smallElementIndex to next position and put the pivot there, so It has all small elements to the left.

        return smallElementIndex; // contains the index of pivot for partition.
    }

    public static void quickSort(int[] arr, int start, int end) {
        if (start < end) {
            int pivotIndex = partition(arr, start, end);

            quickSort(arr, start, pivotIndex-1);
            quickSort(arr, pivotIndex+1, end);
        }
    }

    public List<List<Integer>> minimumAbsDifference(int[] arr) {
        
        // Quick Sort
        quickSort(arr, 0, arr.length - 1);
        
        List<List<Integer>> res = new ArrayList<>();
        int minDiff = Integer.MAX_VALUE;

        for (int i = 0; i < arr.length - 1; i++) {
            if (Math.abs(arr[i] - arr[i+1]) < minDiff){
                minDiff = Math.abs(arr[i] - arr[i+1]);
            }
        }

        for (int i = 0; i < arr.length-1; i++) {
            if (Math.abs(arr[i] - arr[i+1]) == minDiff) {
                res.add(Arrays.asList(arr[i], arr[i+1]));
            }
        }

        return res;
    }
}