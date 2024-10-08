// Copyright Information
// ==================================
// AutoLot8 - AutoLot.Blazor.Models - AddToCartViewModel.cs
// All samples copyright Philip Japikse
// http://www.skimedic.com 2024/10/02
// ==================================

namespace AutoLot.Blazor.Models.ViewModels;

public class AddToCartViewModel
{
    public int Id { get; set; }
    [Display(Name="Stock Quantity")] 
    public int StockQuantity { get; set; }
    public int ItemId { get; set; }
    [Required]
    [MustBeGreaterThanZero]
    [MustNotBeGreaterThan(nameof(StockQuantity))]
    public int Quantity { get; set; }
}