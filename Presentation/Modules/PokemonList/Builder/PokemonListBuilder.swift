//
//  PokemonListBuilder.swift
//  Pokedex
//
//  Created by Tomosuke Okada on 16/02/2020.
//  Copyright © 2020 Tomosuke Okada. All rights reserved.
//

import UIKit

enum PokemonListBuilder {

    static func build() -> UIViewController {
        let view = PokemonListViewController.instantiate()
        let presenter = PokemonListPresenterImpl()
        let wireframe = PokemonListWireframeImpl()

        view.presenter = presenter

        presenter.view = view
        presenter.wireframe = wireframe

        wireframe.viewController = view

        return view
    }
}