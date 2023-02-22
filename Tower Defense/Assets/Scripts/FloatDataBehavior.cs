using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FloatDataBehavior : MonoBehaviour
{
    public float value;
    public FloatData floatDataobj;
    
    void UpdateValue(FloatData obj)
    {
        value += obj.value;
    }
    
    void UpdateValue(float obj)
    {
        value += obj;
    }

    public void UpdateFloatData(float number)
    {
        floatDataobj.UpdateValue(number);
    }
}
