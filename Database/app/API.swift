// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class DeleteObjectMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation DeleteObject($objectId: String!) {
      deleteObject(objectId: $objectId) {
        __typename
        success
        message
      }
    }
    """

  public let operationName: String = "DeleteObject"

  public var objectId: String

  public init(objectId: String) {
    self.objectId = objectId
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("deleteObject", arguments: ["objectId": GraphQLVariable("objectId")], type: .nonNull(.object(DeleteObject.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(deleteObject: DeleteObject) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "deleteObject": deleteObject.resultMap])
    }

    public var deleteObject: DeleteObject {
      get {
        return DeleteObject(unsafeResultMap: resultMap["deleteObject"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "deleteObject")
      }
    }

    public struct DeleteObject: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MutationResponse"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("message", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(success: Bool, message: String) {
        self.init(unsafeResultMap: ["__typename": "MutationResponse", "success": success, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }
    }
  }
}

public final class InsertObjectMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation InsertObject($objectId: String!, $category: String!, $text: String!, $number: Int!, $boolean: Boolean!, $createdAt: String!) {
      insertObject(objectId: $objectId, category: $category, text: $text, number: $number, boolean: $boolean, createdAt: $createdAt) {
        __typename
        success
        message
      }
    }
    """

  public let operationName: String = "InsertObject"

  public var objectId: String
  public var category: String
  public var text: String
  public var number: Int
  public var boolean: Bool
  public var createdAt: String

  public init(objectId: String, category: String, text: String, number: Int, boolean: Bool, createdAt: String) {
    self.objectId = objectId
    self.category = category
    self.text = text
    self.number = number
    self.boolean = boolean
    self.createdAt = createdAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "category": category, "text": text, "number": number, "boolean": boolean, "createdAt": createdAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("insertObject", arguments: ["objectId": GraphQLVariable("objectId"), "category": GraphQLVariable("category"), "text": GraphQLVariable("text"), "number": GraphQLVariable("number"), "boolean": GraphQLVariable("boolean"), "createdAt": GraphQLVariable("createdAt")], type: .nonNull(.object(InsertObject.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(insertObject: InsertObject) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "insertObject": insertObject.resultMap])
    }

    public var insertObject: InsertObject {
      get {
        return InsertObject(unsafeResultMap: resultMap["insertObject"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "insertObject")
      }
    }

    public struct InsertObject: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MutationResponse"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("message", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(success: Bool, message: String) {
        self.init(unsafeResultMap: ["__typename": "MutationResponse", "success": success, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }
    }
  }
}

public final class ListObjectsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query ListObjects($categories: [String]!) {
      objectsByCategories(category: $categories) {
        __typename
        objectId
        category
        text
        number
        boolean
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "ListObjects"

  public var categories: [String?]

  public init(categories: [String?]) {
    self.categories = categories
  }

  public var variables: GraphQLMap? {
    return ["categories": categories]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("objectsByCategories", arguments: ["category": GraphQLVariable("categories")], type: .list(.object(ObjectsByCategory.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objectsByCategories: [ObjectsByCategory?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "objectsByCategories": objectsByCategories.flatMap { (value: [ObjectsByCategory?]) -> [ResultMap?] in value.map { (value: ObjectsByCategory?) -> ResultMap? in value.flatMap { (value: ObjectsByCategory) -> ResultMap in value.resultMap } } }])
    }

    public var objectsByCategories: [ObjectsByCategory?]? {
      get {
        return (resultMap["objectsByCategories"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [ObjectsByCategory?] in value.map { (value: ResultMap?) -> ObjectsByCategory? in value.flatMap { (value: ResultMap) -> ObjectsByCategory in ObjectsByCategory(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [ObjectsByCategory?]) -> [ResultMap?] in value.map { (value: ObjectsByCategory?) -> ResultMap? in value.flatMap { (value: ObjectsByCategory) -> ResultMap in value.resultMap } } }, forKey: "objectsByCategories")
      }
    }

    public struct ObjectsByCategory: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Object"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("number", type: .nonNull(.scalar(Int.self))),
        GraphQLField("boolean", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, category: String? = nil, text: String, number: Int, boolean: Bool, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Object", "objectId": objectId, "category": category, "text": text, "number": number, "boolean": boolean, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var category: String? {
        get {
          return resultMap["category"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "category")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var number: Int {
        get {
          return resultMap["number"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "number")
        }
      }

      public var boolean: Bool {
        get {
          return resultMap["boolean"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "boolean")
        }
      }

      public var createdAt: String? {
        get {
          return resultMap["createdAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class ObjectChangedSubscription: GraphQLSubscription {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    subscription ObjectChanged {
      objects {
        __typename
        objectId
        category
        text
        number
        boolean
        createdAt
        updatedAt
      }
    }
    """

  public let operationName: String = "ObjectChanged"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Subscription"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("objects", type: .list(.object(Object.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(objects: [Object?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Subscription", "objects": objects.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }])
    }

    public var objects: [Object?]? {
      get {
        return (resultMap["objects"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Object?] in value.map { (value: ResultMap?) -> Object? in value.flatMap { (value: ResultMap) -> Object in Object(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [Object?]) -> [ResultMap?] in value.map { (value: Object?) -> ResultMap? in value.flatMap { (value: Object) -> ResultMap in value.resultMap } } }, forKey: "objects")
      }
    }

    public struct Object: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Object"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("objectId", type: .nonNull(.scalar(String.self))),
        GraphQLField("category", type: .scalar(String.self)),
        GraphQLField("text", type: .nonNull(.scalar(String.self))),
        GraphQLField("number", type: .nonNull(.scalar(Int.self))),
        GraphQLField("boolean", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("createdAt", type: .scalar(String.self)),
        GraphQLField("updatedAt", type: .scalar(String.self)),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(objectId: String, category: String? = nil, text: String, number: Int, boolean: Bool, createdAt: String? = nil, updatedAt: String? = nil) {
        self.init(unsafeResultMap: ["__typename": "Object", "objectId": objectId, "category": category, "text": text, "number": number, "boolean": boolean, "createdAt": createdAt, "updatedAt": updatedAt])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var objectId: String {
        get {
          return resultMap["objectId"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "objectId")
        }
      }

      public var category: String? {
        get {
          return resultMap["category"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "category")
        }
      }

      public var text: String {
        get {
          return resultMap["text"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "text")
        }
      }

      public var number: Int {
        get {
          return resultMap["number"]! as! Int
        }
        set {
          resultMap.updateValue(newValue, forKey: "number")
        }
      }

      public var boolean: Bool {
        get {
          return resultMap["boolean"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "boolean")
        }
      }

      public var createdAt: String? {
        get {
          return resultMap["createdAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "createdAt")
        }
      }

      public var updatedAt: String? {
        get {
          return resultMap["updatedAt"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "updatedAt")
        }
      }
    }
  }
}

public final class UpdateObjectMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation UpdateObject($objectId: String!, $text: String!, $number: Int!, $boolean: Boolean!, $updatedAt: String!) {
      updateObject(objectId: $objectId, text: $text, number: $number, boolean: $boolean, updatedAt: $updatedAt) {
        __typename
        success
        message
      }
    }
    """

  public let operationName: String = "UpdateObject"

  public var objectId: String
  public var text: String
  public var number: Int
  public var boolean: Bool
  public var updatedAt: String

  public init(objectId: String, text: String, number: Int, boolean: Bool, updatedAt: String) {
    self.objectId = objectId
    self.text = text
    self.number = number
    self.boolean = boolean
    self.updatedAt = updatedAt
  }

  public var variables: GraphQLMap? {
    return ["objectId": objectId, "text": text, "number": number, "boolean": boolean, "updatedAt": updatedAt]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateObject", arguments: ["objectId": GraphQLVariable("objectId"), "text": GraphQLVariable("text"), "number": GraphQLVariable("number"), "boolean": GraphQLVariable("boolean"), "updatedAt": GraphQLVariable("updatedAt")], type: .nonNull(.object(UpdateObject.selections))),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(updateObject: UpdateObject) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "updateObject": updateObject.resultMap])
    }

    public var updateObject: UpdateObject {
      get {
        return UpdateObject(unsafeResultMap: resultMap["updateObject"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "updateObject")
      }
    }

    public struct UpdateObject: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["MutationResponse"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("success", type: .nonNull(.scalar(Bool.self))),
        GraphQLField("message", type: .nonNull(.scalar(String.self))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(success: Bool, message: String) {
        self.init(unsafeResultMap: ["__typename": "MutationResponse", "success": success, "message": message])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var success: Bool {
        get {
          return resultMap["success"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "success")
        }
      }

      public var message: String {
        get {
          return resultMap["message"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "message")
        }
      }
    }
  }
}
