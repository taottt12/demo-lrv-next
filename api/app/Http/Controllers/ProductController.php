<?php

namespace App\Http\Controllers;

use App\Models\OwnershipStatus;
use App\Models\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        // return Product::all();
        // return Product::with('ownershipStatus')->get();
        $products = Product::with('ownershipStatus')->get();

        return response()->json($products);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    public function ownerShipStatus()
    {
        return OwnershipStatus::all();
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $validatedData = $request->validate([
            'name' => 'required|string',
            'price' => 'required|numeric|min:1',
            'quantity' => 'required|integer|min:1',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'status' => 'required|string',
            'description' => 'required|string',
            'user_id' => 'required|exists:users,id',
        ]);

        // Xử lý ảnh
        if ($request->hasFile('image')) {
            $image = $request->file('image');
            $imagePath = $image->store('images', 'public');
            $validatedData['image'] = $imagePath;
        }

        $product = Product::create($validatedData);

        return response()->json($product, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return response()->json($product);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Product $product)
    {
        //
        $validatedData = $request->validate([
            'name' => 'required|string',
            'price' => 'required|numeric',
            'quantity' => 'required|integer',
            'image' => 'required|string',
            'status' => 'required|string',
            'ownership_status_id' => 'required|exists:ownership_status,id',
            'description' => 'required|string',
        ]);

        $product->update($validatedData);

        return response()->json($product, 200);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        //
        $product->delete();

        return response()->json(null, 204);
    }
}
