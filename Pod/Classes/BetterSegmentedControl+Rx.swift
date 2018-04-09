//
//  BetterSegmentedControl+Rx.swift
//  BetterSegmentedControl
//
//  Created by 방성원 on 2018. 4. 9..
//

import Foundation

import RxSwift
import RxCocoa

extension Reactive where Base: BetterSegmentedControl {
    /// Reactive wrapper for `selectedSegmentIndex` property.
    public var selectedSegmentIndex: ControlProperty<Int> {
        return value
    }

    /// Reactive wrapper for `selectedSegmentIndex` property.
    public var value: ControlProperty<Int> {
        return base.rx.controlPropertyWithDefaultEvents(
            getter: { segmentedControl in
                return Int(segmentedControl.index)
            }, setter: { segmentedControl, value in
                try? segmentedControl.setIndex(UInt(value), animated: false)
            }
        )
    }

    /// This is a separate method is to better communicate to public consumers that
    /// an `editingEvent` needs to fire for control property to be updated.
    func controlPropertyWithDefaultEvents<T>(
        editingEvents: UIControlEvents = [.allEditingEvents, .valueChanged],
        getter: @escaping (Base) -> T,
        setter: @escaping (Base, T) -> ()
        ) -> ControlProperty<T> {
        return controlProperty(
            editingEvents: [.allEditingEvents, .valueChanged],
            getter: getter,
            setter: setter
        )
    }
}
