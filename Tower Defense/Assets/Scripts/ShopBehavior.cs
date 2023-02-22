using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ShopBehavior : MonoBehaviour
{
    private BuildManager buildManager;


    private void Start()
    {
        buildManager = BuildManager.instance;
    }

    public void PurchaseWizard()
    {
        Debug.Log("Wizard Purchased");
        buildManager.SetBuildingToBuild(buildManager.wizardPrefab);
    }
    
    public void PurchaseArcher()
    {
        Debug.Log("Archer Purchased");
        buildManager.SetBuildingToBuild(buildManager.archerPrefab);
    }
}
