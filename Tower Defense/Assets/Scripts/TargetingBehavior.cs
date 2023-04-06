using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TargetingBehavior : MonoBehaviour
{
    public Transform target;
    public List<GameObject> enemies;
    public float range = 15f;
    
    void Start()
    {
        enemies = new List<GameObject>(); 
        //InvokeRepeating("UpdateTarget", 0f, 0.5f);
    }

    private void OnTriggerEnter(Collider other)
    {
        if (!enemies.Contains(other.gameObject))
        {
            enemies.Add(other.gameObject);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (enemies.Contains(other.gameObject))
        {
            enemies.Remove(other.gameObject);
        }
    }

    void UpdateTarget()
    {
        GameObject enemy = enemies[0];
        target = enemy.transform;
        
    }

    void AddToList(GameObject obj)
    {
        enemies.Add(obj);
    }
    
    void RemoveFromList(GameObject obj)
    {
        enemies.Remove(obj);
    }
    
    void Update()
    {
        if (target == null)
            return;
    }

    private void OnDrawGizmosSelected()
    {
        Gizmos.color = Color.red;
        Gizmos.DrawWireSphere(transform.position, range);
    }
}
