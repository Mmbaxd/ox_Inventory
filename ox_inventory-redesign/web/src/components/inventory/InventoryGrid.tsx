import React, { useEffect, useMemo, useRef, useState } from 'react';
import { Inventory } from '../../typings';
import WeightBar from '../utils/WeightBar';
import InventorySlot from './InventorySlot';
import { getTotalWeight } from '../../helpers';
import { useAppSelector } from '../../store';
import { useIntersection } from '../../hooks/useIntersection';

const PAGE_SIZE = 30;
const TOTAL_SQUARES = 12;

const InventoryGrid: React.FC<{ inventory: Inventory }> = ({ inventory }) => {
  const weight = useMemo(
    () => (inventory.maxWeight !== undefined ? Math.floor(getTotalWeight(inventory.items) * 1000) / 1000 : 0),
    [inventory.maxWeight, inventory.items]
  );

  const [page, setPage] = useState(0);
  const containerRef = useRef(null);
  const { ref, entry } = useIntersection({ threshold: 0.5 });
  const isBusy = useAppSelector((state) => state.inventory.isBusy);

  const displayLabel = useMemo(() => {
    if (inventory.type === 'player' || inventory.type === 'personal') {
      return 'Inventory';
    }
    return inventory.label;
  }, [inventory.type, inventory.label]);

  useEffect(() => {
    if (entry && entry.isIntersecting) {
      setPage((prev) => ++prev);
    }
  }, [entry]);

  const weightRatio = inventory.maxWeight ? Math.min(weight / inventory.maxWeight, 1) : 0;
  const filledSquares = Math.round(weightRatio * TOTAL_SQUARES);

  const squareColor =
    weightRatio < 0.5 ? '#6ed4ff' : weightRatio < 0.8 ? '#6ed4ff' : '#6ed4ff';

  return (
    <>
      <div className="inventory-grid-wrapper" style={{ pointerEvents: isBusy ? 'none' : 'auto' }}>
        <div>
          <div className="inventory-grid-header-wrapper">
            <p>{displayLabel}</p>
            {inventory.maxWeight && (
              <p>
                <span className="weight-squares-wrap">
                  {Array.from({ length: TOTAL_SQUARES }).map((_, i) => (
                    <span
                      key={i}
                      className={`weight-sq${i < filledSquares ? ' filled' : ''}`}
                      style={
                        i < filledSquares
                          ? { background: squareColor, opacity: 1 - (filledSquares - 1 - i) * 0.04 }
                          : {}
                      }
                    />
                  ))}
                </span>
                <span className="weight-label">
                  {(weight / 1000).toLocaleString('en-us', { minimumFractionDigits: 0, maximumFractionDigits: 2 })}
                  <span className="weight-max">/{inventory.maxWeight / 1000}kg</span>
                </span>
              </p>
            )}
          </div>
        </div>

        <div className="inventory-grid-container" ref={containerRef}>
          {inventory.items.slice(0, (page + 1) * PAGE_SIZE).map((item, index) => (
            <InventorySlot
              key={`${inventory.type}-${inventory.id}-${item.slot}`}
              item={item}
              ref={index === (page + 1) * PAGE_SIZE - 1 ? ref : null}
              inventoryType={inventory.type}
              inventoryGroups={inventory.groups}
              inventoryId={inventory.id}
            />
          ))}
        </div>
      </div>
    </>
  );
};

export default InventoryGrid;