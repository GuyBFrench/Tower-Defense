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
        InvokeRepeating("UpdateTarget", 0f, 0.5f);
    }

    void UpdateTarget()
    {
        float shortestDistance = Mathf.Infinity;
        GameObject nearestEnemy = null;
        foreach (GameObject enemy in enemies)
        {
            float distanceToEnemy = Vector3.Distance(transform.position, enemy.transform.position);
            if (distanceToEnemy < shortestDistance)
            {
                shortestDistance = distanceToEnemy;
                nearestEnemy = enemy;
            }

            target = nearestEnemy.transform;
        }
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
