using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NodeBehavior : MonoBehaviour
{

    private GameObject building;

    private BuildManager buildManager;
    void Start()
    {
        buildManager = BuildManager.instance;
    }


    private void OnMouseDown()
    {
        if(buildManager.GetObjectToBuild() == null)
            return;
        if (building != null)
        {
            Debug.Log("Cant build there.");
        }

        GameObject buildingToBuild = BuildManager.instance.GetObjectToBuild();
        building = (GameObject)Instantiate(buildingToBuild, transform.position + Vector3.right + Vector3.forward, Quaternion.identity);
    }

    void Update()
    {
        
    }
}
